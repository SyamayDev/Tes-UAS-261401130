program saringDeret;

uses crt;

var
    n, kategori, i, total : integer;

begin
    clrscr;
    repeat
        write('Masukkan Batas Akhir : '); readln(n);
        if (n <= 0) or (n > 100) then
        writeln('Input tidak valid! Masukkan N antara 1 - 100.');
    until (n >= 1) and (n <= 100);

    writeln;
    writeln('Pilih Kategori!');
    writeln('1. Ganjil');
    writeln('2. Genap');
    write('Masukkan Pilihan: '); readln(kategori);

    total := 0;
    i := 0;

    write('Hasil : ');
    while i < n do
    begin
        i := i + 1;
        if (kategori = 1) and (i mod 2 = 0) then
        continue;
        if (kategori = 2) and (i mod 2 <> 0) then
        continue;
        if i mod 5 = 0 then
        continue;
        write(i, ' ');
        total := total + i;
    end;
    writeln;

    writeln('Total Penjumlahan : ', total);

end.
