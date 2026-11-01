#!/usr/bin/env bash
# NIOS Sr. Secondary Mathematics (311) - English material downloader
set -u

BASE="https://www.nios.ac.in"
CH_DIR="/home/atif/learning/maths/chapters"
WS_DIR="/home/atif/learning/maths/worksheet"

mkdir -p "$CH_DIR" "$WS_DIR"

# chapter_no|Title
CHAPTERS=(
"1|Sets"
"2|Relations and Functions-I"
"3|Trigonometric Functions-I"
"4|Trigonometric Functions-II"
"5|Relation between Sides and Angles of a Triangle"
"6|Sequences and Series"
"7|Some Special Sequences"
"8|Complex Numbers"
"9|Quadratic Equations and Linear Inequalities"
"10|Principle of Mathematical Induction"
"11|Permutations and Combinations"
"12|Binomial Theorem"
"13|Cartesian System of Rectangular Co-ordinates"
"14|Straight Lines"
"15|Circles"
"16|Conic Sections"
"17|Measures of Dispersion"
"18|Random Experiments and Events"
"19|Probability"
"20|Matrices"
"21|Determinants"
"22|Inverse of a Matrix and its Applications"
"23|Relation and Functions-II"
"24|Inverse Trigonometric Functions"
"25|Limits and Continuity"
"26|Differentiation"
"27|Differentiation of Trigonometric Functions"
"28|Differentiation of Exponential and Logarithmic Functions"
"29|Application of Derivatives"
"30|Integration"
"31|Definite Integrals"
"32|Differential Equations"
"33|Introduction to 3-D"
"34|Vectors"
"35|Plane"
"36|Straight Line"
"37|Linear Programming"
"38|Mathematical Reasoning"
)

fetch() {
    # fetch <url> <dest>  -> returns 0 on success
    curl -sfL --retry 3 --retry-delay 2 --max-time 120 -o "$2" "$1"
    # make sure we actually got a PDF, not an error page
    if [ -s "$2" ] && head -c 4 "$2" | grep -q '%PDF'; then
        return 0
    fi
    rm -f "$2"
    return 1
}

for entry in "${CHAPTERS[@]}"; do
    n="${entry%%|*}"
    title="${entry#*|}"
    nn=$(printf "%02d" "$n")
    safe_title="${title// /-}"

    ch_name="${nn}-${safe_title}.pdf"
    ws_name="${nn}-${safe_title}-Worksheet.pdf"

    # ---- chapter ----
    ch_url="${BASE}/media/documents/SrSec311NEW/311_Maths_Eng/311_Maths_Eng_Lesson${n}.pdf"
    if [ -f "$CH_DIR/$ch_name" ]; then
        echo "[skip] chapter $nn already exists"
    elif fetch "$ch_url" "$CH_DIR/$ch_name"; then
        echo "[ok]   chapter $nn - $title"
    else
        echo "[FAIL] chapter $nn - $title  ($ch_url)"
    fi

    # ---- worksheet ----
    if [ "$n" -le 3 ]; then
        ws_url="${BASE}/media/documents/WorkSheets_Senior_Secondary/Maths_311/maths_311_english_w${n}.pdf"
    else
        ws_url="${BASE}/media/documents/WorkSheets_Senior_Secondary/Maths_311/ws_Maths_311_E_L${n}.pdf"
    fi

    if [ -f "$WS_DIR/$ws_name" ]; then
        echo "[skip] worksheet $nn already exists"
    elif fetch "$ws_url" "$WS_DIR/$ws_name"; then
        echo "[ok]   worksheet $nn - $title"
    else
        # No official worksheet -> create a placeholder ending in "no-wc"
        rm -f "$WS_DIR/$ws_name"
        noc_name="${nn}-${safe_title}-no-wc.txt"
        cat > "$WS_DIR/$noc_name" <<EOF
NIOS Sr. Secondary - Mathematics (311)
Chapter $n: $title

No official English worksheet is published for this chapter on the NIOS
website, so this placeholder file was created (hence the "-no-wc" suffix:
no worksheet).

Source page: ${BASE}/online-course-material/sr-secondary-courses/mathematics-(311).aspx
Attempted worksheet URL: $ws_url
EOF
        echo "[no-wc] worksheet $nn - $title (no official worksheet, placeholder created)"
    fi
done

echo
echo "=== Summary ==="
echo "chapters  : $(ls -1 "$CH_DIR" | wc -l)"
echo "worksheets: $(ls -1 "$WS_DIR" | wc -l)  (incl. -no-wc placeholders)"
