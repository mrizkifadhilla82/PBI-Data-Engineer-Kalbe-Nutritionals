#Melakukan import mysql connector
import mysql.connector

#Melakukan percobaan koneksi
conn = mysql.connector.connect(
    host="your_host",
    user="your_user",
    password="your_password",
    database="your_database"
)

#Membuat object cursor sebagai penanda
cursor = conn.cursor()

#Deklarasi SQL Query untuk memasukkan record ke DB (KARYAWAN)
Insert_sql = (
    "INSERT INTO KARYAWAN(FIRST_NAME, LAST_NAME, AGE, SEX, INCOME) "
    "VALUES (%s, %s, %s, %s, %s)"
)
values = ('RIZKI', 'FADHILLA', 23, 'MALE', 400)

try: 
    #Eksekusi SQL Command
    cursor.execute(Insert_sql,values)

    #Melakukan perubahan (commit) pada DB
    conn.commit()

except:
    #Roll Back apabila ada issue
    conn.rollback()

#Menutup Koneksi
conn.close()