https://produse.readthedocs.io/en/latest/ClipOverlap.html


mamba create -n for_produse_test
mamba activate for_produse_test
#69241  mamba install -c bioconda -c conda-forge samtools=1.3.1 bwa=0.7.0 python=3.4
## remove all packages and test it again without specifying versions
conda remove -n for_produse_test --all

mamba install -c bioconda -c conda-forge samtools bwa python # default version? to resolve version conflicts?
#bwa                       0.7.19 
#python                    3.14.0
#samtools                  1.22.1
=====================================================================================================
Could not solve for environment specs
The following packages are incompatible
├─ bwa 0.7.0**  does not exist (perhaps a typo or a missing channel);
├─ python 3.4**  is installable and it requires
│  ├─ ncurses 5.9* , which can be installed;
│  └─ openssl 1.0.* , which can be installed;
└─ samtools 1.3.1**  is uninstallable because there are no viable options
   ├─ samtools 1.3.1 would require
   │  └─ openssl >=1.1.0,<=1.1.1 , which conflicts with any installable versions previously reported;
   ├─ samtools 1.3.1 would require
   │  └─ openssl >=3.1.0,<4.0a0 , which conflicts with any installable versions previously reported;
   ├─ samtools 1.3.1 would require
   │  └─ curl >=7.81.0,<8.0a0 , which requires
   │     └─ krb5 [>=1.19.2,<1.20.0a0 |>=1.19.3,<1.20.0a0 |>=1.20.1,<1.21.0a0 ], which requires
   │        └─ libedit >=3.1.20191231,<3.2.0a0  but there are no viable options
   │           ├─ libedit 3.1.20191231 would require
   │           │  └─ ncurses >=6.1,<7.0.0a0 , which conflicts with any installable versions previously reported;
   │           ├─ libedit 3.1.20191231 would require
   │           │  └─ ncurses >=6.2,<7.0.0a0 , which conflicts with any installable versions previously reported;
   │           └─ libedit [3.1.20240808|3.1.20250104] would require
   │              └─ ncurses >=6.5,<7.0a0 , which conflicts with any installable versions previously reported;
   └─ samtools 1.3.1 would require
      └─ openssl >=3.4.0,<4.0a0 , which conflicts with any installable versions previously reported.
=====================================================================================================

#69247  cd /home/yzliu/eDNA/faststorage/yzliu/DK_proj/population_genomics/software_1

00000  cd /home/yzliu/eDNA/faststorage/yzliu/DK_proj/population_genomics/software
69248  ls
69249  git clone https://github.com/morinlab/ProDuSe.git
69250  ls
69251  cd ProDuSe/
69255  ll

69264  mamba search ProDuSe
69265  mamba search samtools
69266  mamba search bwa
69267  mamba search python
69268  mamba activate for_produse_test
69271  conda search samtools
69272  mamba install -c bioconda -c conda-forge samtools=1.22.1 bwa=0.7.19 python=3.14.0 # now have conflict: same as mamba install -c bioconda -c conda-forge samtools bwa python
69273  mamba activate for_produse_test
69274  cd /home/yzliu/eDNA/faststorage/yzliu/DK_proj/population_genomics/software/ProDuSe/ProDuSe

69276  python /home/yzliu/eDNA/faststorage/yzliu/DK_proj/population_genomics/software/ProDuSe/ProDuSe/ClipOverlap.py -h

#Traceback (most recent call last):
#  File "/home/yzliu/eDNA/faststorage/yzliu/DK_proj/population_genomics/software/ProDuSe/ProDuSe/ClipOverlap.py", line 6, in <module>
#    import pysam
#ModuleNotFoundError: No module named 'pysam'

mamba install -c bioconda pysam
#Could not solve for environment specs
#The following packages are incompatible
└─ pysam   is installable with the potential options
   ├─ pysam [0.10.0|0.11.0|...|0.9.1.4] would require
   │  └─ python [2.7* |>=2.7,<2.8.0a0 ], which can be installed;
   ├─ pysam [0.10.0|0.11.0|...|0.9.1.4] would require
   │  └─ python 3.4* , which can be installed;
   ├─ pysam [0.10.0|0.11.0|...|0.9.1.4] would require
   │  └─ python [3.5* |>=3.5,<3.6.0a0 ], which can be installed;
   ├─ pysam [0.10.0|0.11.1|...|0.9.1] would require
   │  └─ python 3.6* , which can be installed;
   ├─ pysam [0.10.0|0.14.1|...|0.9.1] would require
   │  └─ python >=3.6,<3.7.0a0 , which can be installed;
   ├─ pysam [0.15.2|0.15.3|...|0.9.1] would require
   │  └─ python >=3.7,<3.8.0a0 , which can be installed;
   ├─ pysam [0.15.2|0.16.0.1|...|0.9.1] would require
   │  └─ python >=3.8,<3.9.0a0 , which can be installed;
   ├─ pysam [0.16.0.1|0.17.0|...|0.9.1] would require
   │  └─ python >=3.9,<3.10.0a0 , which can be installed;
   ├─ pysam [0.19.1|0.20.0|...|0.23.3] would require
   │  └─ python >=3.10,<3.11.0a0 , which can be installed;
   ├─ pysam [0.22.1|0.23.0|0.23.1|0.23.2|0.23.3] would require
   │  └─ python >=3.11,<3.12.0a0 , which can be installed;
   ├─ pysam [0.22.1|0.23.0|0.23.1|0.23.2|0.23.3] would require
   │  └─ python >=3.12,<3.13.0a0 , which can be installed;
   ├─ pysam 0.23.3 would require
   │  └─ python >=3.13,<3.14.0a0 , which can be installed;
   └─ pysam 0.7.7 would require
      └─ python <3.0.0 , which can be installed.
=====================================================================================================

## create env and install main dependancies
mamba create -n for_produse_test
mamba activate for_produse_test

mamba search pysam # check which version is vaailable and suitable
mamba install -c bioconda pysam=0.23.3
mamba install -c bioconda -c conda-forge samtools=1.22.1 bwa=0.7.19 python=3.12.0 # worked version
mamba install -c bioconda pysam=0.23.3
## bewlow check if other denpendancies are needed
python /home/yzliu/eDNA/faststorage/yzliu/DK_proj/population_genomics/software/ProDuSe/ProDuSe/ClipOverlap.py -h

## install more dependancies (configobj, packaging)
mamba install -c bioconda configobj
mamba install -c bioconda packaging
## below check again if other denpendancies are needed (no more is needed)
python /home/yzliu/eDNA/faststorage/yzliu/DK_proj/population_genomics/software/ProDuSe/ProDuSe/ClipOverlap.py -h

## download produse and go to its folder
cd /home/yzliu/eDNA/faststorage/yzliu/DK_proj/population_genomics/software
ls
git clone https://github.com/morinlab/ProDuSe.git
ls
cd ProDuSe/

## then ready to run clip
conda list

## change env name
#conda deactivate
#conda rename -n for_produce for_produse
# conda activate for_produse_test

ClipOverlap=/home/yzliu/eDNA/faststorage/yzliu/DK_proj/population_genomics/software/ProDuSe/ProDuSe/ClipOverlap.py
## test a small genome
bam_dir=/home/yzliu/eDNA/faststorage/yzliu/DK_proj/data/bee_proj_data/bam
cd $bam_dir
Bommaj_bam=Bommaj.REF_BomMaj.filtered.sort.rm_marked_dups.bam
clip_bam=${Bommaj_bam/bam/clip.bam}
python $ClipOverlap -i $Bommaj_bam -o - | samtools view | less -S
python $ClipOverlap -i $Bommaj_bam -o - | samtools sort -@ 8 --write-index > $clip_bam
## use “-” to write to stdout
python $ClipOverlap -i $Bommaj_bam -o --tag_origin - | samtools sort -@ 8 -T /tmp --write-index > $clip_bam
python $ClipOverlap -h

