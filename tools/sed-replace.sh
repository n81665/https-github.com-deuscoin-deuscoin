cd ~
mv bitcoin deuscoin
cd deuscoin/src

mkdir TMP
mv ../.gitignore TMP
mv ../.travis.yml TMP
mv ../configure.ac TMP
mv ../INSTALL TMP
mv ../Makefile.am TMP

sudo find ./ -type f -exec sed -i 's/bitcoin/deuscoin/g' {} \;
sudo find ./ -type f -exec sed -i 's/Bitcoin/Deuscoin/g' {} \;
sudo find ./ -type f -exec sed -i 's/BITCOIN/DEUSCOIN/g' {} \;
sudo find ./ -type f -exec sed -i 's/BTC/DEUS/g' {} \;
sudo find ./ -type f -exec sed -i 's/info\@deuscoin\.org/deuscoin\@users\.noreply\.github\.com/g' {} \;

sudo find ./ -type f -exec sed -i 's/The Deuscoin developers/The Deuscoin Core developers/g' {} \;
sudo find ./ -type f -exec sed -i 's/The Deuscoin Core developers/The Bitcoin Core and Deuscoin Core developers/g' {} \;
sudo find ./ -type f -exec sed -i 's/deuscoin\.it/bitcoin\.it/g' {} \;
sudo find ./ -type f -exec sed -i 's/Deuscoin Wiki/Bitcoin Wiki/g' {} \;
sudo find ./ -type f -exec sed -i 's/deuscointalk\.org/bitcointalk\.org/g' {} \;
sudo find ./ -type f -exec sed -i 's/deuscoincore\.org/bitcoincore\.org/g' {} \;
sudo find ./ -type f -exec sed -i 's/github\.com\/deuscoin/github\.com\/bitcoin/g' {} \;
sudo find ./ -type f -exec sed -i 's/deuscoin-development/bitcoin-development/g' {} \;
sudo find ./ -type f -exec sed -i 's/Deuscoin always counted CHECKMULTISIGs/Bitcoin always counted CHECKMULTISIGs/g' {} \;
sudo find ./ -type f -exec sed -i 's/sourceforge\.net\/projects\/deuscoin/sourceforge\.net\/projects\/bitcoin/g' {} \;

mv TMP/* ../
mv TMP/.* ../
rmdir TMP

cd ../contrib/gitian-descriptors
sudo find ./ -type f -exec sed -i 's/bitcoin/deuscoin/g' {} \;
sudo find ./ -type f -exec sed -i 's/Bitcoin/Deuscoin/g' {} \;
sudo find ./ -type f -exec sed -i 's/BITCOIN/DEUSCOIN/g' {} \;