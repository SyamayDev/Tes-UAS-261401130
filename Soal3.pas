program nilaiMahasiswa;

uses crt;

type
    TMahasiswa = record
        NIM : string[15];
        Nama : string[50];
        NilaiTugas : real;
        NilaiUAS : real;
        NilaiAkhir : real;
    end;

var
    dataMhs : array[1..30] of TMahasiswa;
    i, n : integer;

begin
    clrscr;
    write('Masukkan Jumlah Mahasiswa : '); readln(n);

    for i := 1 to n do
    begin
        writeln;
        writeln('Data Mahasiswa Ke- ', i);
        write('NIM         : '); readln(dataMhs[i].NIM);
        write('Nama        : '); readln(dataMhs[i].Nama);
        write('Nilai Tugas : '); readln(dataMhs[i].NilaiTugas);
        write('Nilai UAS   : '); readln(dataMhs[i].NilaiUAS);
        dataMhs[i].NilaiAkhir := 0.4 * dataMhs[i].NilaiTugas + 0.6 * dataMhs[i].NilaiUAS;
    end;

    writeln;
    writeln('REKAPITULASI NILAI');
    for i := 1 to n do
    begin
        writeln('Mahasiswa Ke- ', i);
        writeln('NIM         : ', dataMhs[i].NIM);
        writeln('Nama        : ', dataMhs[i].Nama);
        writeln('Nilai Tugas : ', dataMhs[i].NilaiTugas:0:2);
        writeln('Nilai UAS   : ', dataMhs[i].NilaiUAS:0:2);
        writeln('Nilai Akhir : ', dataMhs[i].NilaiAkhir:0:2);
        if dataMhs[i].NilaiAkhir >= 65 then
        writeln('Status      : LULUS')
        else
        writeln('Status      : TIDAK LULUS');
        writeln('=============================================================');
    end;

end.
