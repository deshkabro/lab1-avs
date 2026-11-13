#!/bin/bash

echo "НАЧАЛО ЧАСТИ 2"

cd ~/lab0

cp nagiev_call claude_monet/owner_office/nagiev_call_copy

cp -r claude_monet/advertising claude_monet/owner_office/advertising_backup

ln -s claude_monet/contracts/supplier_contract owner_contract

cd claude_monet/owner_office
ln -s ../hall hall_access
cd ~/lab0

ln claude_monet/contracts/supplier_contract claude_monet/contracts/supplier_duplicate

cat claude_monet/owner_office/owner_order claude_monet/chef_office/barinov_reply > claude_monet/owner_office/meeting_notes

cat claude_monet/kitchen/chef_order >> nagiev_call

mv claude_monet/advertising/promo_plan archive/promo_final

git add .
git commit -m "Вариант 11, Часть 2: Копирование, ссылки и перемещение"
git push

echo "ЧАСТЬ 2 ВЫПОЛНЕНА!"