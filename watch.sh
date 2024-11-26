#!/bin/bash
 
WATCH_DIR="/app/html"
cd $watch_dir
pwd
 
convert_html_to_pdf() {
    local html_file=$1
    local pdf_file="${html_file%.html}-output.pdf"
    echo "Convertendo $html_file para $pdf_file"
    wkhtmltopdf -T 0 -B 0 -L 0 -R 0 -s A4 --print-media-type "$html_file" "$pdf_file"
    echo "Conversão concluída: $pdf_file"
}

 
echo "Monitorando alterações no diretório: $WATCH_DIR"
inotifywait -m -e close_write --format '%w%f' "$WATCH_DIR" | while read html_file; do
    if [[ "$html_file" == *.html ]]; then
        echo "Arquivo modificado: $html_file"
        convert_html_to_pdf "$html_file"
    fi
done