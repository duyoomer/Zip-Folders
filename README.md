# Folder Zipper Script

## English

This batch script compresses all folders in the working directory into ZIP files, skipping existing ZIP files. It also logs the process into a `zip_folders_log.txt` file, which records whether the compression was successful or if there were any errors.

### Features:
- Compresses folders in the current directory into ZIP files.
- Skips already existing ZIP files.
- Logs the compression process into `zip_folders_log.txt`.
- Handles errors and records them in the log file.
- Uses 7-Zip for compression.

### Prerequisites:
- 7-Zip must be installed on your system. Modify the `zipPath` in the script to point to the 7-Zip executable.
- This script uses UTF-8 encoding.

### Usage:
1. Download or clone the repository.
2. Set the correct path for 7-Zip in the script.
3. Run the script by double-clicking it, or via command line.
4. The log file `zip_folders_log.txt` will be created in the working directory, containing the results of the compression.

----------------------------

# Klasör Zipleyici Betik

## Türkçe

Bu batch betiği, çalışma dizinindeki tüm klasörleri ZIP dosyalarına dönüştürür, mevcut ZIP dosyalarını atlar. Ayrıca işlemi `zip_folders_log.txt` dosyasına kaydeder; bu dosya, zipleme işleminin başarılı olup olmadığını veya herhangi bir hata olup olmadığını kaydeder.

### Özellikler:
- Mevcut dizindeki klasörleri ZIP dosyalarına sıkıştırır.
- Zaten mevcut olan ZIP dosyalarını atlar.
- Zipleme işlemini `zip_folders_log.txt` dosyasına kaydeder.
- Hataları işler ve log dosyasına kaydeder.
- Sıkıştırma için 7-Zip kullanır.

### Gereksinimler:
- Sisteminizde 7-Zip yüklü olmalıdır. Betikte `zipPath` değişkenini 7-Zip çalıştırılabilir dosyasının yoluna göre düzenleyin.
- Bu betik UTF-8 kodlaması kullanır.

### Kullanım:
1. Reposuyu indirin veya klonlayın.
2. Betikte 7-Zip için doğru yolu ayarlayın.
3. Betiği çift tıklayarak veya komut satırından çalıştırın.
4. Çalışma dizininde `zip_folders_log.txt` adlı bir log dosyası oluşturulacak ve zipleme işleminin sonuçları burada kaydedilecektir.
