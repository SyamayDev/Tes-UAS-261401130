program analisisUjian;

uses crt;

type
    arrayNilai = array[1..50] of integer;

var
    nilai : arrayNilai;
    i, n, max, min, jumlah : integer;
    rataRata : real;

begin
    clrscr;
    write('Masukkan Jumlah Peserta : '); readln(n);

    for i := 1 to n do
    begin
        write('Masukkan Nilai Peserta Ke- ', i, ': '); readln(nilai[i]);
    end;

    max := 1;
    min := 1;
    jumlah := 0;

    for i := 1 to n do
    begin
        if nilai[i] > nilai[max] then
        max := i;
        if nilai[i] < nilai[min] then
        min := i;
        jumlah := jumlah + nilai[i];
    end;
    rataRata := jumlah / n;

    writeln;
    writeln('Nilai tertinggi : ', nilai[max], ' (indeks ke-', max, ')');
    writeln('Nilai terendah  : ', nilai[min], ' (indeks ke-', min, ')');
    writeln('Rata-rata nilai : ', rataRata:0:2);

    write('Indeks peserta di atas rata-rata: ');
    for i := 1 to n do
        if nilai[i] > rataRata then
        write(i, ' ');
    writeln;

end.
