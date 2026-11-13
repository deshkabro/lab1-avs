#!/bin/bash

echo "НАЧАЛО ЧАСТИ 3"

cd ~/lab0

echo "--- Задание 1 ---"
ls -lR . | grep "^-" | grep -v "copy" | sort -k5 -nr | head -5

echo "--- Задание 2 ---"
grep -r -h -i -E "нагиев|баринов" claude_monet archive | grep -v -i "реклам" | sort -r | head -5

echo "--- Задание 3 ---"
grep -r -l -i "поставщик" claude_monet/contracts claude_monet/owner_office | wc -l

echo "--- Задание 4 ---"
for f in claude_monet/contracts/*; do
  head -n 1 "$f"
  tail -n 1 "$f"
done | grep -i -E "поставщик|музыкант|оплат" | sort

echo "--- Задание 5 ---"
grep -v -i "согласен" claude_monet/owner_office/meeting_notes | grep -i -E "меню|кухн" | sort -r | wc -w

echo "--- Задание 6 ---"
ls -lR . | grep "^l" | sort -k9 -r

echo "--- Задание 7 ---"
grep -r -h -i "реклам" claude_monet/owner_office/advertising_backup | grep -v -i "Нагиев" | sort | wc -w

rm claude_monet/owner_office/nagiev_call_copy
rm owner_contract
rm claude_monet/owner_office/hall_access
rm claude_monet/contracts/supplier_duplicate
rm claude_monet/hall/vip_guests
rmdir claude_monet/hall
rmdir claude_monet/advertising
rm -r claude_monet/owner_office/advertising_backup

git add .
git commit -m "Вариант 11, Часть 3: Поиск, фильтрация и удаление"
git push

echo "ЧАСТЬ 3 ВЫПОЛНЕНА!"