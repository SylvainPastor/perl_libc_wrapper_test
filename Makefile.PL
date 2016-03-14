require 5.004 ;
use ExtUtils::MakeMaker 5.16 ;
use Config ;

WriteMakefile(
    NAME              => 'mylibDemo',
    VERSION_FROM      => 'lib/mylibDemo.pm', # finds $VERSION
    ABSTRACT_FROM     => 'lib/mylibDemo.pm', # retrieve abstract from module
    AUTHOR            => 'Rtone',
    LIBS              => ['-Lmylibc -lmylibc'], # e.g., '-lm'
    DEFINE            => '', # e.g., '-DHAVE_SOMETHING'
    INC               => '-I. -I./mylibc', # e.g., '-I. -I/usr/include/other'
    OBJECT            => '$(O_FILES)', # link all the C files too
);
