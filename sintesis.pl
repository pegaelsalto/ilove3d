#!/usr/bin/perl
#perl2exe_info CompanyName=My Company
#perl2exe_info FileDescription=My File Description
#perl2exe_info FileVersion=1.2.3.4
#perl2exe_info InternalName=My International Name
#perl2exe_info LegalCopyright=My Legal Copyright
#perl2exe_info LegalTrademarks=My Legal Trademarks
#perl2exe_info OriginalFilename=My Original Filename
#perl2exe_info ProductName=My Product Name
#perl2exe_info ProductVersion=My Product Version
#perl2exe_info Comment=My Comment

use strict;
use warnings;
  
print "\t\n  _______________________________________________________________________\n\n        GENERADOR DE ARCHIVOS PARA SINTESIS SIMULTANEA DE PEPTIDOS       \n  _______________________________________________________________________\n\n";
print "  AUTOR: CLAUDIA PAREJA - ING. BIOINFORMATICO - CPAREJABARRUETO\@GMAIL.COM\n  _______________________________________________________________________\n\n";
print "                   LABORATORIO DE SINTESIS DE PEPTIDOS\n                      NUCLEO BIOTECNOLOGIA CURAUMA\n              PONTIFICIA UNIVERSIDAD CATOLICA DE VALPARAISO\n";
print "  _______________________________________________________________________\n\n\n\n";

print "  NOMBRE DEL ARCHIVO: ";
my $archivo=<STDIN>;
chop($archivo);
open(ARCHIVO,">$archivo.doc") || die "[x] No se puede abrir archivo\n";
my $archivo_datos=$archivo."_datos";
open(ARCHIVO2,">$archivo_datos.doc") || die "[x] No se puede abrir archivo\n";
print ARCHIVO "\tSINTESIS '$archivo'\n\n";
print "\n\n  SINTESIS DE <1> 40 mg <2> 100 mg : ";
my $sintesis=<STDIN>;
print "\n\n  NUMERO DE PEPTIDOS: ";
my $peptidos=<STDIN>;
chop($peptidos);
print "\n\n  NUMERO DE FAMILIAS: ";
my $familias=<STDIN>;
chop($familias);
my @variable;
my @arreglo1=''; my @arreglo2=''; my @arreglo3=''; my @arreglo4=''; my @arreglo5=''; my @arreglo6=''; my @arreglo7=''; my @arreglo8=''; my @arreglo9=''; my @arreglo10='';
my @arreglo11=''; my @arreglo12=''; my @arreglo13=''; my @arreglo14='';my @arreglo15=''; my @arreglo16=''; my @arreglo17='';
my $veinteuno=21;

if($familias==1){
	print "\n  NOMBRE DE LA FAMILIA: ";
	my $name_fam=<STDIN>;
	
	print ARCHIVO "\t$peptidos PEPTIDOS $familias FAMILIA\n\n\n";
	
	my $secuencia='';
	my $posicion='';
	my $posicion_f='';
	my $familia=$name_fam;
	$familia =~ tr/a-z/A-Z/;
	my $residuos='';
	my $bolsa='';
	my $peso=0;

	my $O=0; my $A=0; my $C=0; my $D=0; my $E=0; my $F=0; my $G=0; my $H=0; my $I=0; my $K=0; my $L=0; my $M=0; my $N=0; my $P=0; my $Q=0; my $R=0; my $S=0; my $T=0; my $V=0; my $W=0; my $Y=0;
	my $OUT=0;
	my %hash=();
	my $acople=0;
	my @arreglo='';
	my @aminoacidos='';
	my @bolsas='';
	print "\n\n";
	my $PO=0; my $PA=0; my $PC=0; my $PD=0; my $PE=0; my $PF=0; my $PG=0; my $PH=0; my $PI=0; my $PK=0; my $PL=0; my $PM=0; my $PN=0;
	my $PP=0; my $PQ=0; my $PR=0; my $PS=0; my $PT=0; my $PV=0; my $PW=0; my $PY=0;
	my @region_peptido='';
	for(my $o=1;$o<=$peptidos;$o++){
		$PO=0; $PA=0; $PC=0; $PD=0; $PE=0; $PF=0; $PG=0; $PH=0; $PI=0; $PK=0; $PL=0; $PM=0; $PN=0;
		$PP=0; $PQ=0; $PR=0; $PS=0; $PT=0; $PV=0; $PW=0; $PY=0;

		print "\n  ________________________________\n\n  COMPLETE LOS DATOS DEL PEPTIDO $o \n  ________________________________\n";
		$peso=0;
		my $pos=0;
		my $size=0;
		
		do{
			$pos=0;
			print "\n  SECUENCIA AMINOACIDICA: ";
			$secuencia=<STDIN>;
			chop($secuencia);
			@aminoacidos=split("",$secuencia);#separamos cada aminoacido en un arreglo
			$arreglo[$o]=$secuencia;
			$OUT=0;
			my $x=0;
			$size=@aminoacidos; #numero de residuos del peptido
			#print $size;
			
			$PO=0; $PA=0; $PC=0; $PD=0; $PE=0; $PF=0; $PG=0; $PH=0; $PI=0; $PK=0; $PL=0; 
			$PM=0; $PN=0; $PP=0; $PQ=0; $PR=0; $PS=0; $PT=0; $PV=0; $PW=0; $PY=0;
			
			for($x=1;$x<=$size;$x++){
				if($aminoacidos[$x-1] =~ /B/ or $aminoacidos[$x-1] =~ /b/ or $aminoacidos[$x-1] =~ /J/ or $aminoacidos[$x-1] =~ /j/ or 
				$aminoacidos[$x-1] =~ /Ñ/ or $aminoacidos[$x-1] =~ /ñ/ or $aminoacidos[$x-1] =~ /U/ or $aminoacidos[$x-1] =~ /u/ or #$aminoacidos[$x-1] =~ /X/ or $aminoacidos[$x-1] =~ /x/ or 
				$aminoacidos[$x-1] =~ /Z/ or $aminoacidos[$x-1] =~ /z/ or $aminoacidos[$x-1] =~ /1/ or $aminoacidos[$x-1] =~ /2/ or $aminoacidos[$x-1] =~ /3/ or $aminoacidos[$x-1] =~ /4/ or 
				$aminoacidos[$x-1] =~ /5/ or $aminoacidos[$x-1] =~ /6/ or $aminoacidos[$x-1] =~ /7/ or $aminoacidos[$x-1] =~ /8/ or $aminoacidos[$x-1] =~ /9/ or $aminoacidos[$x-1] =~ /0/ or
				$aminoacidos[$x-1] =~ /\s/ or $aminoacidos[$x-1] =~ /\t/ or $aminoacidos[$x-1] =~ /\W/) #or $aminoacidos[$x-1] =~ /n/ or $aminoacidos[$x-1] =~ /P/ or $aminoacidos[$x-1] =~ /p/ or
				{
					print "  \n  ERROR : DEBE INGRESAR SIMBOLOS DE UNA LETRA DE LOS AMINOACIDOS\n";
					$pos=1;
				}
			}
			if ($pos==0){
				for($x=1;$x<=$size;$x++){
				
					if($aminoacidos[$x-1] eq 'A' || $aminoacidos[$x-1] eq 'a'){
						$A++;
						$PA++;
						#$pos=0;
						#$region_peptido[$o]='A';
					}
					if($aminoacidos[$x-1] eq 'c' or $aminoacidos[$x-1] eq 'C'){
						$C++;
						$PC++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'D' or $aminoacidos[$x-1] eq 'd'){
						$D++;
						$PD++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'E' or $aminoacidos[$x-1] eq 'e'){
						$E++;
						$PE++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'F' or $aminoacidos[$x-1] eq 'f'){
						$F++;
						$PF++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'G' or $aminoacidos[$x-1] eq 'g'){
						$G++;
						$PG++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'H' or $aminoacidos[$x-1] eq 'h'){
						$H++;
						$PH++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'I' or $aminoacidos[$x-1] eq 'i'){
						$I++;
						$PI++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'K' or $aminoacidos[$x-1] eq 'k'){
						$K++;
						$PK++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'L' or $aminoacidos[$x-1] eq 'l'){
						$L++;
						$PL++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'm' or $aminoacidos[$x-1] eq 'M'){
						$M++;
						$PM++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'N' or $aminoacidos[$x-1] eq 'n'){
						$N++;
						$PN++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'P' or $aminoacidos[$x-1] eq 'p'){
						$P++;
						$PP++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'q' or $aminoacidos[$x-1] eq 'Q'){
						$Q++;
						$PQ++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'R' or $aminoacidos[$x-1] eq 'r'){
						$R++;
						$PR++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'S' or $aminoacidos[$x-1] eq 's'){
						$S++;
						$PS++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 't' or $aminoacidos[$x-1] eq 'T'){
						$T++;
						$PT++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'V' or $aminoacidos[$x-1] eq 'v'){
						$V++;
						$PV++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'w' or $aminoacidos[$x-1] eq 'W'){
						$W++;
						$PW++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'Y' or $aminoacidos[$x-1] eq 'y'){
						$Y++;
						$PY++;
						#$pos=0;
					}
				}
			}
		}while($pos!=0);
		
		
		$pos=0;
		do{
			print "\n  POSICION EN LA SECUENCIA AMINOACIDICA: ";
			$posicion=<STDIN>;
			chop($posicion);
			if ($posicion =~  /^\d+$/){
				$pos=0;
			}else{
				print "  \n  ERROR : DEBE INGRESAR UN VALOR NUMERICO\n";
				$pos=1;
			}
		}while($pos!=0);
		
		do{
			print "\n  NUMERO DE BOLSA: ";
			$bolsa=<STDIN>;
			chop($bolsa);
			$bolsas[$o]=$bolsa;
			if ($bolsa =~  /^\d+$/){
				$pos=0;
			}else{
				print "  \n  ERROR : DEBE INGRESAR UN VALOR NUMERICO\n";
				$pos=1;
			}
		}while($pos!=0);
		
		$posicion_f=$posicion+$size-1;
		$peso=($PA*(89.09)+$PC*(121.16)+$PD*(133.10)+$PE*(147.13)+$PF*(165.19)+$PG*(75.07)+$PH*(155.16)+$PI*(131.18)+$PK*(146.19)+$PL*(131.17)+$PM*(149.21)+$PN*(132.12)+$PP*(115.13)+$PQ*(146.15)+$PR*(174.20)+$PS*(105.09)+$PT*(119.12)+$PV*(117.15)+$PW*(204.23)+$PY*(181.19))-18*($size-1);
		
		print ARCHIVO "\t$size\t$posicion\t$posicion_f\t$familia";
		print ARCHIVO "\t$bolsa\t";
		$peso = sprintf "%.2f",$peso;
		print ARCHIVO "$peso"; # imprime '007'
		$secuencia =~ tr/a-z/A-Z/;
		print ARCHIVO "\t$secuencia\n";
		
	}
	
	print ARCHIVO "\n\nR.PEP\t    9       1 9       1 9       1 9       1 9       1 9       1\n";
	for(my $o=1;$o<=$peptidos;$o++){
		my $todos=63;
		my @monomero=split("",$arreglo[$o]);
		my $size=@monomero;
		my $espacios=$todos-$size;
		$arreglo[$o] =~ tr/a-z/A-Z/;
		print ARCHIVO $bolsas[$o]."\t"." "x$espacios.$arreglo[$o];
		print ARCHIVO "\n";
	}
	
	my $largo_bolsas=0;
	$largo_bolsas=@bolsas;
	print ARCHIVO  "\n
		ALA\t\t$A \tRESIDUOS
		ARG\t\t$R \tRESIDUOS
		ASN\t\t$N \tRESIDUOS
		ASP\t\t$D \tRESIDUOS
		CYS\t\t$C \tRESIDUOS
		GLN\t\t$Q \tRESIDUOS
		GLU\t\t$E \tRESIDUOS
		GLY\t\t$G \tRESIDUOS
		HIS\t\t$H \tRESIDUOS
		ILE\t\t$I \tRESIDUOS
		LEU\t\t$L \tRESIDUOS
		LYS\t\t$K \tRESIDUOS
		MET\t\t$M \tRESIDUOS
		PHE\t\t$F \tRESIDUOS
		PRO\t\t$P \tRESIDUOS
		SER\t\t$S \tRESIDUOS
		THR\t\t$T \tRESIDUOS
		TRP\t\t$W \tRESIDUOS
		TYR\t\t$Y \tRESIDUOS
		VAL\t\t$V \tRESIDUOS
		OUT\t\t$OUT \tRESIDUOS\n
	";
	my $mayor=0;
	my $largo=0;
	my $AB=0; my $SB=0; my $DB=0;
	for(my $z=1; $z<=$peptidos;$z++){
		@aminoacidos=split("",$arreglo[$z]);
		$largo=@aminoacidos;
		if($mayor<$largo){
			$mayor=$largo;
		}
	}
	my @amin='';
	my $sale=0;
	my @bolsitas='';
	for(my $acop=1;$acop<=$mayor;$acop++){#recorremos los acoples 3
		$acople++;
		my $O=0; my $A=0; my $C=0; my $D=0; my $E=0; my $F=0; my $G=0; my $H=0; my $I=0; my $K=0; 
		my $L=0; my $M=0; my $N=0; my $P=0; my $Q=0; my $R=0; my $S=0; my $T=0; my $V=0; my $W=0; my $Y=0;
		my @BO=''; my @BA=''; my @BC=''; my @BD=''; my @BE=''; my @BF=''; my @BG=''; my @BH=''; my @BI=''; my @BK=''; 
		my @BL=''; my @BM=''; my @BN=''; my @BP=''; my @BQ=''; my @BR=''; my @BS=''; my @BT=''; my @BV=''; my @BW=''; my @BY='';
		print ARCHIVO "\n\nACOPLE NUMERO $acople\n\n";
		print ARCHIVO2 "ACOPLE NUMERO $acople:";
		#$AB=0; $SB=0; $DB=0;
		$PO=0; $PA=0; $PC=0; $PD=0; $PE=0; $PF=0; $PG=0; $PH=0; $PI=0; $PK=0; 
		$PL=0; $PM=0; $PN=0; $PP=0; $PQ=0; $PR=0; $PS=0; $PT=0; $PV=0; $PW=0; $PY=0;
			
		for(my $z=1;$z<=$peptidos;$z++){#recorremos el numero de peptidos para sacar el ultimo caracter
			#$PO=0; $PA=0; $PC=0; $PD=0; $PE=0; $PF=0; $PG=0; $PH=0; $PI=0; $PK=0; 
			#$PL=0; $PM=0; $PN=0; $PP=0; $PQ=0; $PR=0; $PS=0; $PT=0; $PV=0; $PW=0; $PY=0;
			@amin=split("",$arreglo[$z]);#tomamos las letras de un peptido
			$largo=@amin;#tomamos el largo del peptido
			if(($acople-$largo)<=0){
				#print "\nAA $amin[$largo-4]\n";
				if($amin[$largo-$acople] eq 'A' || $amin[$largo-$acople] eq "a"){
					$PA++;
					push @BA, $bolsas[$z];

				}else{
					if($amin[$largo-$acople] eq 'c' || $amin[$largo-$acople] eq 'C'){
						$PC++;
						push @BC, $bolsas[$z];
					}
					else{
						if($amin[$largo-$acople] eq 'D' || $amin[$largo-$acople] eq 'd'){
							$PD++;
							push @BD, $bolsas[$z];
						}
						else{
							if($amin[$largo-$acople] eq 'E' || $amin[$largo-$acople] eq 'e'){
								$PE++;
								push @BE, $bolsas[$z];
							}
							else{
								if($amin[$largo-$acople] eq 'F' || $amin[$largo-$acople] eq 'f'){
									$PF++;
									push @BF, $bolsas[$z];
								}
								else{
									if($amin[$largo-$acople] eq 'G' || $amin[$largo-$acople] eq 'g'){
										$PG++;
										push @BG, $bolsas[$z];									
									}
									else{
										if($amin[$largo-$acople] eq 'H' || $amin[$largo-$acople] eq 'h'){
											$PH++;
											push @BH, $bolsas[$z];
										}
										else{
											if($amin[$largo-$acople] eq 'I' || $amin[$largo-$acople] eq 'i'){
												$PI++;
												push @BI, $bolsas[$z];
											}
											else{
												if($amin[$largo-$acople] eq 'K' || $amin[$largo-$acople] eq 'k'){
													$PK++;
													push @BK, $bolsas[$z];
												}
												else{
													if($amin[$largo-$acople] eq 'L' || $amin[$largo-$acople] eq 'l'){
														$PL++;
														push @BL, $bolsas[$z];
													}
													else{
														if($amin[$largo-$acople] eq 'm' || $amin[$largo-$acople] eq 'M'){
															$PM++;
															push @BM, $bolsas[$z];
														}
														else{
															if($amin[$largo-$acople] eq 'N' || $amin[$largo-$acople] eq 'n'){
																$PN++;
																push @BN, $bolsas[$z];
															}
															else{
																if($amin[$largo-$acople] eq 'P' || $amin[$largo-$acople] eq 'p'){
																	$PP++;
																	push @BP, $bolsas[$z];
																}
																else{
																	if($amin[$largo-$acople] eq 'q' or $amin[$largo-$acople] eq 'Q'){
																		$PQ++;
																		push @BQ, $bolsas[$z];
																	}
																	else{
																		if($amin[$largo-$acople] eq 'R' or $amin[$largo-$acople] eq 'r'){
																			$PR++;
																			push @BR, $bolsas[$z];
																		}
																		else{
																			if($amin[$largo-$acople] eq 'S' or $amin[$largo-$acople] eq 's'){
																				$PS++;
																				push @BS, $bolsas[$z];																
																			}
																			else{
																				if($amin[$largo-$acople] eq 't' or $amin[$largo-$acople] eq 'T'){
																					$PT++;
																					push @BT, $bolsas[$z];
																				}
																				else{
																					if($amin[$largo-$acople] eq 'V' or $amin[$largo-$acople] eq 'v'){
																						$PV++;
																						push @BV, $bolsas[$z];
																					}
																					else{
																						if($amin[$largo-$acople] eq 'w' or $amin[$largo-$acople] eq 'W'){
																							$PW++;
																							push @BW, $bolsas[$z];
																						}
																						else{
																							if($amin[$largo-$acople] eq 'Y' || $amin[$largo-$acople] eq 'y'){
																								$PY++;
																								push @BY, $bolsas[$z];
																							}
																						}
																					}
																				}
																			}		
																		}																									
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
			else{
				$O++;
				push @BO, $bolsas[$z];
			}
		}
		my $ml;
		$veinteuno=21;
		if($sintesis==1){
			$ml=2;
		}
		else{
			$ml=4;
		}
		my $mls=0;
		if($PA>0){
			$mls=$ml*$PA;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml ALA:\t@BA =$PA\n";	
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml ALA:\t@BA =$PA\n";
			}
			print ARCHIVO "\t$mls ml ALA:\t@BA\n";	
			$veinteuno--;
		}
		if($PC>0){
			$mls=$ml*$PC;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml CYS:\t@BC =$PC\n";
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml CYS:\t@BC =$PC\n";
			}
			print ARCHIVO "\t$mls ml CYS:\t@BC\n";	
			$veinteuno--;
		}
		if($PD>0){	
			$mls=$ml*$PD;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml ASP:\t@BD =$PD\n";
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml ASP:\t@BD =$PD\n";
			}
			print ARCHIVO "\t$mls ml ASP:\t@BD\n";
			$veinteuno--;
		}
		if($PE>0){
			$mls=$ml*$PE;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml GLU:\t@BE =$PE\n";
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml GLU:\t@BE =$PE\n";
			}
			print ARCHIVO "\t$mls ml GLU:\t@BE\n";
			
			$veinteuno--;
		}
		if($PF>0){
			$mls=$ml*$PF;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml PHE:\t@BF =$PF\n";
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml PHE:\t@BF =$PF\n";
			}
			print ARCHIVO "\t$mls ml PHE:\t@BF\n";
			$veinteuno--;
		}
		if($PG>0){
			$mls=$ml*$PG;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml GLY:\t@BG =$PG\n";
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml GLY:\t@BG =$PG\n";
			}
			print ARCHIVO "\t$mls ml GLY:\t@BG\n";
			$veinteuno--;
		}
		if($PH>0){
			$mls=$ml*$PH;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml HIS:\t@BH =$PH\n";
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml HIS:\t@BH =$PH\n";
			}		
			print ARCHIVO "\t$mls ml HIS:\t@BH\n";
			$veinteuno--;
		}
		if($PI>0){
			$mls=$ml*$PI;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml ILE:\t@BI =$PI\n";
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml ILE:\t@BI =$PI\n";
			}
			print ARCHIVO "\t$mls ml ILE:\t@BI\n";	
			 $veinteuno--;
		}
		if($PK>0){
			$mls=$ml*$PK;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml LYS:\t@BK =$PK\n";
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml LYS:\t@BK =$PK\n";
			}
			print ARCHIVO "\t$mls ml LYS:\t@BK\n";
			$veinteuno--;
		}
		if($PL>0){
			$mls=$ml*$PL;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml LEU:\t@BL =$PL\n"; 
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml LEU:\t@BL =$PL\n"; 
			}
			print ARCHIVO "\t$mls ml LEU:\t@BL\n";
			$veinteuno--;
		}
		if($PM>0){
			$mls=$ml*$PM;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml MET:\t@BM =$PM\n"; 
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml MET:\t@BM =$PM\n"; 
			}
			print ARCHIVO "\t$mls ml MET:\t@BM\n";
			$veinteuno--;
		}
		if($PN>0){
			$mls=$ml*$PN;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml ASN:\t@BN =$PN\n"; 
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml ASN:\t@BN =$PN\n"; 
			}
			print ARCHIVO "\t$mls ml ASN:\t@BN\n";
			$veinteuno--;
		}
		if($PP>0){
			$mls=$ml*$PP;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml PRO:\t@BP =$PP\n"; 
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml PRO:\t@BP =$PP\n"; 
			}
			print ARCHIVO "\t$mls ml PRO:\t@BP\n";	
			$veinteuno--;
		}
		if($PQ>0){
			$mls=$ml*$PQ;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml GLN:\t@BQ =$PQ\n"; 
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml GLN:\t@BQ =$PQ\n"; 
			}
			print ARCHIVO "\t$mls ml GLN:\t@BQ\n";	
			$veinteuno--;
		}
		if($PR>0){
			$mls=$ml*$PR;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml ARG:\t@BR =$PR\n";
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml ARG:\t@BR =$PR\n";
			}
			print ARCHIVO "\t$mls ml ARG:\t@BR\n";	
			$veinteuno--;
		}
		if($PS>0){		
			$mls=$ml*$PS;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml SER:\t@BS =$PS\n";
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml SER:\t@BS =$PS\n";
			}
			print ARCHIVO "\t$mls ml SER:\t@BS\n"; 
			$veinteuno--;
		}
		if($PT>0){
			$mls=$ml*$PT;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml THR:\t@BT =$PT\n"; 
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml THR:\t@BT =$PT\n"; 
			}
			print ARCHIVO "\t$mls ml THR:\t@BT\n";	
			$veinteuno--;
		}
		if($PV>0){
			$mls=$ml*$PV;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml VAL:\t@BV =$PV\n";
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml VAL:\t@BV =$PV\n"; 
			}
			print ARCHIVO "\t$mls ml VAL:\t@BV\n";	
			$veinteuno--;
		}
		if($PW>0){
			$mls=$ml*$PW;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml TRP:\t@BW =$PW\n"; 
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml TRP:\t@BW =$PW\n"; 
			}
			print ARCHIVO "\t$mls ml TRP:\t@BW\n";	
			$veinteuno--;
		}
		if($PY>0){
			$mls=$ml*$PY;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml TYR:\t@BY =$PY\n"; 
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml TYR:\t@BY =$PY\n"; 
			}
			print ARCHIVO "\t$mls ml TYR:\t@BY\n";
			$veinteuno--;
		}
		if($PO>0){	
			$mls=$ml*$PO;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml OUT:\t@BO =$PO\n"; 
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml OUT:\t@BO =$PO\n"; 
			}
			print ARCHIVO "\t$mls ml OUT:\t@BO\n";
			$veinteuno--;
		}
		
		print ARCHIVO2 "\n"x$veinteuno;
		
		print ARCHIVO2 "+-----------------------------DESPROTECCION-----------------------------+\n";
		print ARCHIVO2 "|   FECHA __/__/__                               |HECHO POR|REVISADO POR|\n";
		print ARCHIVO2 "| Piperidina 20% TritonX100 1%/DMF(2x10')        |_________|____________|\n";
		print ARCHIVO2 "|   Lavado con DMF(3x1')                         |_________|____________|\n";
		print ARCHIVO2 "|   Lavado con IPA(1x1')                         |_________|____________|\n";
		print ARCHIVO2 "| Lavado con AZUL DE BROMOFENOL 1% EN DMF(1x2')  |_________|____________|\n";
		print ARCHIVO2 "|   Lavado con DMF (2x1')                        |_________|____________|\n";
		print ARCHIVO2 "|   Lavado con DMF (2x1')                        |_________|____________|\n";
		print ARCHIVO2 "+------------HORA DE ACOPLE Y DESCRIPCION DE LA ESTRATEGIA--------------+\n";
		print ARCHIVO2 "|   Ciclo  Desc. de la estrategia |FECHA   |HORA |HECHO POR|REVISADO POR|\n";
		print ARCHIVO2 "|            AA+HBTU+DIEA+OXIMA   |        |     |         |            |\n";
		print ARCHIVO2 "|   Simple   (10:10:10:20)        |__/__/__|__:__|_________|____________|\n";
		print ARCHIVO2 "|   Doble    AA+TBTU(5:5)         |__/__/__|__:__|_________|____________|\n";
		print ARCHIVO2 "|   Triple   AA+DIC(5:5)          |__/__/__|__:__|_________|____________|\n";
		print ARCHIVO2 "+ Despues de cada ciclo y antes del test BROMOFENOL lavar con DMF(2x1') +\n\n";

		my $cuenta=0; 
		for(my $z=1;$z<=$peptidos;$z++){
			$cuenta++;
			$O=0; $A=0; $C=0; $D=0; $E=0; $F=0; $G=0; $H=0; $I=0; $K=0; 
			$L=0; $M=0; $N=0; $P=0; $Q=0; $R=0; $S=0; $T=0; $V=0; $W=0; $Y=0;
			@amin=split("",$arreglo[$z]);#tomamos las letras de un peptido
			$largo=@amin;#tomamos el largo del peptido
			
			if(($acople-$largo)<=0){
				print ARCHIVO "\n\t$bolsas[$z]\t: ";
				if($amin[$largo-$acople] eq 'A' || $amin[$largo-$acople] eq "a"){
					print ARCHIVO " ALA";
					if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo1,$var);
					}
					if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo2,$var);
					}
					if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo3,$var);
					}
					if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo4,$var);
					}
					if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo5,$var);
					}
					if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo6,$var);
					}
					if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo7,$var);
					}
					if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo8,$var);
					}
					if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo9,$var);
					}
					if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo10,$var);
					}
					if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo11,$var);
					}
					if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo12,$var);
					}
					if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo13,$var);
					}
					if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo14,$var);
					}
					if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo15,$var);
					}
					if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo16,$var);
					}
					if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo17,$var);
					}
				}
				else{
					if($amin[$largo-$acople] eq 'c' || $amin[$largo-$acople] eq 'C'){
						print ARCHIVO " CYS";
						if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo1,$var);
						}
						if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo2,$var);
						}
						if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo3,$var);
						}
						if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo4,$var);
						}
						if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo5,$var);
						}
						if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo6,$var);
						}
						if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo7,$var);
						}
						if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo8,$var);
						}
						if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo9,$var);
						}
						if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo10,$var);
						}
						if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo11,$var);
						}
						if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo12,$var);
						}
						if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo13,$var);
						}
						if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo14,$var);
						}
						if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo15,$var);
						}
						if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo16,$var);
						}
						if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo17,$var);
						}
					}
					else{
						if($amin[$largo-$acople] eq 'D' || $amin[$largo-$acople] eq 'd'){
							print ARCHIVO " ASP";
							#print ARCHIVO2 "ASP";
							if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo1,$var);
							}
							if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo2,$var);
							}
							if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo3,$var);
							}
							if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo4,$var);
							}
							if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo5,$var);
							}
							if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo6,$var);
							}
							if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo7,$var);
							}
							if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo8,$var);
							}
							if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo9,$var);
							}
							if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo10,$var);
							}
							if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo11,$var);
							}
							if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo12,$var);
							}
							if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo13,$var);
							}
							if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo14,$var);
							}
							if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo15,$var);
							}
							if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo16,$var);
							}
							if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo17,$var);
							}
						}
						else{
							if($amin[$largo-$acople] eq 'E' || $amin[$largo-$acople] eq 'e'){
								print ARCHIVO " GLU";
							#	print ARCHIVO2 "GLU";
								if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo1,$var);
								}
								if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo2,$var);
								}
								if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo3,$var);
								}
								if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo4,$var);
								}
								if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo5,$var);
								}
								if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo6,$var);
								}
								if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo7,$var);
								}
								if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo8,$var);
								}
								if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo9,$var);
								}
								if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo10,$var);
								}
								if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo11,$var);
								}
								if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo12,$var);
								}
								if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo13,$var);
								}
								if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo14,$var);
								}
								if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo15,$var);
								}
								if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo16,$var);
								}
								if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo17,$var);
								}
							}
							else{
								if($amin[$largo-$acople] eq 'F' || $amin[$largo-$acople] eq 'f'){
									print ARCHIVO " PHE";
							#		print ARCHIVO2 "PHE";
									if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo1,$var);
									}
									if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo2,$var);
									}
									if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo3,$var);
									}
									if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo4,$var);
									}
									if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo5,$var);
									}
									if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo6,$var);
									}
									if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo7,$var);
									}
									if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo8,$var);
									}
									if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo9,$var);
									}
									if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo10,$var);
									}
									if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo11,$var);
									}
									if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo12,$var);
									}
									if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo13,$var);
									}
									if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo14,$var);
									}
									if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo15,$var);
									}
									if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo16,$var);
									}
									if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo17,$var);
									}
								}
								else{
									if($amin[$largo-$acople] eq 'G' || $amin[$largo-$acople] eq 'g'){
										print ARCHIVO " GLY";
							#			print ARCHIVO2 "GLY";
										if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo1,$var);
										}
										if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo2,$var);
										}
										if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo3,$var);
										}
										if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo4,$var);
										}
										if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo5,$var);
										}
										if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo6,$var);
										}
										if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo7,$var);
										}
										if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo8,$var);
										}
										if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo9,$var);
										}
										if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo10,$var);
										}
										if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo11,$var);
										}
										if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo12,$var);
										}
										if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo13,$var);
										}
										if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo14,$var);
										}
										if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo15,$var);
										}
										if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo16,$var);
										}
										if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo17,$var);
										}
									}
									else{
										if($amin[$largo-$acople] eq 'H' || $amin[$largo-$acople] eq 'h'){
											print ARCHIVO " HIS";
							#				print ARCHIVO2 "HIS";
											if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo1,$var);
											}
											if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo2,$var);
											}
											if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo3,$var);
											}
											if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo4,$var);
											}
											if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo5,$var);
											}
											if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo6,$var);
											}
											if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo7,$var);
											}
											if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo8,$var);
											}
											if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo9,$var);
											}
											if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo10,$var);
											}
											if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo11,$var);
											}
											if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo12,$var);
											}
											if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo13,$var);
											}
											if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo14,$var);
											}
											if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo15,$var);
											}
											if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo16,$var);
											}
											if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo17,$var);
											}
										}
										else{
											if($amin[$largo-$acople] eq 'I' || $amin[$largo-$acople] eq 'i'){
												print ARCHIVO " ILE";
							#					print ARCHIVO2 "ILE";
												if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo1,$var);
												}
												if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo2,$var);
												}
												if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo3,$var);
												}
												if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo4,$var);
												}
												if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo5,$var);
												}
												if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo6,$var);
												}
												if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo7,$var);
												}
												if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo8,$var);
												}
												if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo9,$var);
												}
												if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo10,$var);
												}
												if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo11,$var);
												}
												if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo12,$var);
												}
												if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo13,$var);
												}
												if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo14,$var);
												}
												if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo15,$var);
												}
												if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo16,$var);
												}
												if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo17,$var);
												}
											}
											else{
												if($amin[$largo-$acople] eq 'K' || $amin[$largo-$acople] eq 'k'){
													print ARCHIVO " LYS";
							#						print ARCHIVO2 "LYS";
													if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo1,$var);
													}
													if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo2,$var);
													}
													if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo3,$var);
													}
													if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo4,$var);
													}
													if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo5,$var);
													}
													if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo6,$var);
													}
													if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo7,$var);
													}
													if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo8,$var);
													}
													if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo9,$var);
													}
													if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo10,$var);
													}
													if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo11,$var);
													}
													if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo12,$var);
													}
													if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo13,$var);
													}
													if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo14,$var);
													}
													if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo15,$var);
													}
													if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo16,$var);
													}
													if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo17,$var);
													}
												}
												else{
													if($amin[$largo-$acople] eq 'L' || $amin[$largo-$acople] eq 'l'){
														print ARCHIVO " LEU";
							#							print ARCHIVO2 "LEU";
														if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo1,$var);
														}
														if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo2,$var);
														}
														if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo3,$var);
														}
														if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo4,$var);
														}
														if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo5,$var);
														}
														if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo6,$var);
														}
														if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo7,$var);
														}
														if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo8,$var);
														}
														if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo9,$var);
														}
														if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo10,$var);
														}
														if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo11,$var);
														}
														if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo12,$var);
														}
														if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo13,$var);
														}
														if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo14,$var);
														}
														if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo15,$var);
														}
														if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo16,$var);
														}
														if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo17,$var);
														}
													}
													else{
														if($amin[$largo-$acople] eq 'm' || $amin[$largo-$acople] eq 'M'){
															print ARCHIVO " MET";
							#								print ARCHIVO2 "MET";
															if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo1,$var);
															}
															if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo2,$var);
															}
															if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo3,$var);
															}
															if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo4,$var);
															}
															if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo5,$var);
															}
															if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo6,$var);
															}
															if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo7,$var);
															}
															if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo8,$var);
															}
															if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo9,$var);
															}
															if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo10,$var);
															}
															if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo11,$var);
															}
															if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo12,$var);
															}
															if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo13,$var);
															}
															if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo14,$var);
															}
															if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo15,$var);
															}
															if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo16,$var);
															}
															if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo17,$var);
															}
														}
														else{
															if($amin[$largo-$acople] eq 'N' || $amin[$largo-$acople] eq 'n'){
																print ARCHIVO " ASN";
							#									print ARCHIVO2 "ASN";
																if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo1,$var);
																}
																if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo2,$var);
																}
																if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo3,$var);
																}
																if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo4,$var);
																}
																if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo5,$var);
																}
																if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo6,$var);
																}
																if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo7,$var);
																}
																if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo8,$var);
																}
																if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo9,$var);
																}
																if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo10,$var);
																}
																if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo11,$var);
																}
																if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo12,$var);
																}
																if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo13,$var);
																}
																if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo14,$var);
																}
																if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo15,$var);
																}
																if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo16,$var);
																}
																if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo17,$var);
																}
															}
															else{
																if($amin[$largo-$acople] eq 'P' || $amin[$largo-$acople] eq 'p'){
																	print ARCHIVO " PRO";
							#										print ARCHIVO2 "PRO";
																	if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo1,$var);
																	}
																	if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo2,$var);
																	}
																	if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo3,$var);
																	}
																	if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo4,$var);
																	}
																	if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo5,$var);
																	}
																	if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo6,$var);
																	}
																	if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo7,$var);
																	}
																	if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo8,$var);
																	}
																	if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo9,$var);
																	}
																	if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo10,$var);
																	}
																	if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo11,$var);
																	}
																	if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo12,$var);
																	}
																	if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo13,$var);
																	}
																	if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo14,$var);
																	}
																	if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo15,$var);
																	}
																	if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo16,$var);
																	}
																	if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo17,$var);
																	}	
																}
																else{
																	if($amin[$largo-$acople] eq 'q' or $amin[$largo-$acople] eq 'Q'){
																		print ARCHIVO " GLN";
							#											print ARCHIVO2 "GLN";
																		if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo1,$var);
																		}
																		if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo2,$var);
																		}
																		if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo3,$var);
																		}
																		if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo4,$var);
																		}
																		if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo5,$var);
																		}
																		if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo6,$var);
																		}
																		if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo7,$var);
																		}
																		if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo8,$var);
																		}
																		if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo9,$var);
																		}
																		if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo10,$var);
																		}
																		if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo11,$var);
																		}
																		if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo12,$var);
																		}
																		if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo13,$var);
																		}
																		if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo14,$var);
																		}
																		if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo15,$var);
																		}
																		if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo16,$var);
																		}
																		if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo17,$var);
																		}
																	}
																	else{
																		if($amin[$largo-$acople] eq 'R' or $amin[$largo-$acople] eq 'r'){
																			print ARCHIVO " ARG";
							#												print ARCHIVO2 "ARG";
																			if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo1,$var);
																			}
																			if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo2,$var);
																			}
																			if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo3,$var);
																			}
																			if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo4,$var);
																			}
																			if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo5,$var);
																			}
																			if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo6,$var);
																			}
																			if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo7,$var);
																			}
																			if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo8,$var);
																			}
																			if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo9,$var);
																			}
																			if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo10,$var);
																			}
																			if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo11,$var);
																			}
																			if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo12,$var);
																			}
																			if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo13,$var);
																			}
																			if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo14,$var);
																			}
																			if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo15,$var);
																			}
																			if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo16,$var);
																			}
																			if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo17,$var);
																			}
																		}
																		else{
																			if($amin[$largo-$acople] eq 'S' or $amin[$largo-$acople] eq 's'){
																				print ARCHIVO " SER";
							#													print ARCHIVO2 "SER";
																				if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo1,$var);
																				}
																				if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo2,$var);
																				}
																				if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo3,$var);
																				}
																				if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo4,$var);
																				}
																				if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo5,$var);
																				}
																				if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo6,$var);
																				}
																				if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo7,$var);
																				}
																				if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo8,$var);
																				}
																				if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo9,$var);
																				}
																				if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo10,$var);
																				}
																				if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo11,$var);
																				}
																				if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo12,$var);
																				}
																				if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo13,$var);
																				}
																				if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo14,$var);
																				}
																				if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo15,$var);
																				}
																				if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo16,$var);
																				}
																				if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo17,$var);
																				}
																			}
																			else{
																				if($amin[$largo-$acople] eq 't' or $amin[$largo-$acople] eq 'T'){
																					print ARCHIVO " THR";
							#														print ARCHIVO2 "THR";
																					if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo1,$var);
																					}
																					if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo2,$var);
																					}
																					if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo3,$var);
																					}
																					if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo4,$var);
																					}
																					if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo5,$var);
																					}
																					if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo6,$var);
																					}
																					if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo7,$var);
																					}
																					if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo8,$var);
																					}
																					if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo9,$var);
																					}
																					if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo10,$var);
																					}
																					if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo11,$var);
																					}
																					if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo12,$var);
																					}
																					if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo13,$var);
																					}
																					if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo14,$var);
																					}
																					if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo15,$var);
																					}
																					if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo16,$var);
																					}
																					if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo17,$var);
																					}
																				}
																				else{
																					if($amin[$largo-$acople] eq 'V' or $amin[$largo-$acople] eq 'v'){
																						print ARCHIVO " VAL";
							#															print ARCHIVO2 "VAL";
																						if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo1,$var);
																						}
																						if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo2,$var);
																						}
																						if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo3,$var);
																						}
																						if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo4,$var);
																						}
																						if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo5,$var);
																						}
																						if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo6,$var);
																						}
																						if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo7,$var);
																						}
																						if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo8,$var);
																						}
																						if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo9,$var);
																						}
																						if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo10,$var);
																						}
																						if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo11,$var);
																						}
																						if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo12,$var);
																						}
																						if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo13,$var);
																						}
																						if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo14,$var);
																						}
																						if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo15,$var);
																						}
																						if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo16,$var);
																						}
																						if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo17,$var);
																						}
																					}
																					else{
																						if($amin[$largo-$acople] eq 'w' or $amin[$largo-$acople] eq 'W'){
																							print ARCHIVO " TRP";
							#																print ARCHIVO2 "TRP";
																							if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo1,$var);
																							}
																							if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo2,$var);
																							}
																							if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo3,$var);
																							}
																							if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo4,$var);
																							}
																							if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo5,$var);
																							}
																							if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo6,$var);
																							}
																							if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo7,$var);
																							}
																							if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo8,$var);
																							}
																							if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo9,$var);
																							}
																							if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo10,$var);
																							}
																							if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo11,$var);
																							}
																							if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo12,$var);
																							}
																							if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo13,$var);
																							}
																							if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo14,$var);
																							}
																							if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo15,$var);
																							}
																							if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo16,$var);
																							}
																							if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo17,$var);
																							}
																						}
																						else{
																							if($amin[$largo-$acople] eq 'Y' || $amin[$largo-$acople] eq 'y'){
																								print ARCHIVO " TYR";
							#																	print ARCHIVO2 "TYR";
																								if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo1,$var);
																								}
																								if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo2,$var);
																								}
																								if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo3,$var);
																								}
																								if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo4,$var);
																								}
																								if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo5,$var);
																								}
																								if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo6,$var);
																								}
																								if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo7,$var);
																								}
																								if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo8,$var);
																								}
																								if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo9,$var);
																								}
																								if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo10,$var);
																								}
																								if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo11,$var);
																								}
																								if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo12,$var);
																								}
																								if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo13,$var);
																								}
																								if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo14,$var);
																								}
																								if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo15,$var);
																								}
																								if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo16,$var);
																								}
																								if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo17,$var);
																								}
																							}
																							else{
																								print ARCHIVO " X  ";
			
																								if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo1,$var);
																								}
																								if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo2,$var);
																								}
																								if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo3,$var);
																								}
																								if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo4,$var);
																								}
																								if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo5,$var);
																								}
																								if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo6,$var);
																								}
																								if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo7,$var);
																								}
																								if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo8,$var);
																								}
																								if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo9,$var);
																								}
																								if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo10,$var);
																									$bolsas[$z]='';
																								}		
																								if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo11,$var);
																								}
																								if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo12,$var);
																								}
																								if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo13,$var);
																								}
																								if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo14,$var);
																								}
																								if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo15,$var);
																								}
																								if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo16,$var);
																								}
																								if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo17,$var);
																								}	
																							}
																						}
																					}
																				}
																			}		
																		}																									
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
			else{	
			
				if($bolsas[$z] eq ''){
					print ARCHIVO "";
					if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
						my $var=$bolsas[$z]."        ";
						push(@arreglo1,$var);
					}
					if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
						my $var=$bolsas[$z]."        ";
						push(@arreglo2,$var);
					}
					if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
						my $var=$bolsas[$z]."        ";
						push(@arreglo3,$var);
					}
					if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
						my $var=$bolsas[$z]."        ";
						push(@arreglo4,$var);
					}
					if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
						my $var=$bolsas[$z]."        ";
						push(@arreglo5,$var);
					}
					if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
						my $var=$bolsas[$z]."        ";
						push(@arreglo6,$var);
					}
					if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
						my $var=$bolsas[$z]."        ";
						push(@arreglo7,$var);
					}
					if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
						my $var=$bolsas[$z]."        ";
						push(@arreglo8,$var);
					}
					if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
						my $var=$bolsas[$z]."        ";
						push(@arreglo9,$var);
					}
					if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
						my $var=$bolsas[$z]."        ";
						push(@arreglo10,$var);
					}
					if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
						my $var=$bolsas[$z]."        ";
						push(@arreglo11,$var);
					}
					if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
						my $var=$bolsas[$z]."        ";
						push(@arreglo12,$var);
					}
					if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
						my $var=$bolsas[$z]."        ";
						push(@arreglo13,$var);
					}
					if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
						my $var=$bolsas[$z]."        ";
						push(@arreglo14,$var);
					}
					if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
						my $var=$bolsas[$z]."        ";
						push(@arreglo15,$var);
					}
					if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
						my $var=$bolsas[$z]."        ";
						push(@arreglo16,$var);
					}
					if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
						my $var=$bolsas[$z]."        ";
						push(@arreglo17,$var);
					}
				}
				else{

					print ARCHIVO "\n\t$bolsas[$z]\t:  OUT";
				
					if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo1,$var);
						$bolsas[$z]='';
					}
					if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo2,$var);
						$bolsas[$z]='';
					}
					if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo3,$var);
						$bolsas[$z]='';
					}
					if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo4,$var);
						$bolsas[$z]='';
					}
					if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo5,$var);
						$bolsas[$z]='';
					}
					if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo6,$var);
						$bolsas[$z]='';
					}
					if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo7,$var);
						$bolsas[$z]='';
					}
					if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo8,$var);
						$bolsas[$z]='';
					}
					if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo9,$var);
						$bolsas[$z]='';
					}
					if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo10,$var);
						$bolsas[$z]='';
					}		
					if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo11,$var);
						$bolsas[$z]='';
					}
					if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo12,$var);
						$bolsas[$z]='';
					}
					if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo13,$var);
						$bolsas[$z]='';
					}
					if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo14,$var);
						$bolsas[$z]='';
					}
					if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo15,$var);
						$bolsas[$z]='';
					}
					if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo16,$var);
						$bolsas[$z]='';
					}
					if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo17,$var);
						$bolsas[$z]='';
					}
				}
			}
		}

		print ARCHIVO2 @arreglo1; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo2; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo3; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo4; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo5; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo6; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo7; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo8; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo9; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo10; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo11; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo12; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo13; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo14; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo15; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo16; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo17; print ARCHIVO2 "\n";
		 @arreglo1='';  @arreglo2='';  @arreglo3='';  @arreglo4='';  @arreglo5='';  @arreglo6='';  @arreglo7='';  @arreglo8='';  @arreglo9='';  @arreglo10='';
		 @arreglo11='';  @arreglo12='';  @arreglo13='';  @arreglo14=''; @arreglo15='';  @arreglo16='';  @arreglo17='';
		#esto es el acople 1, aca se debe imprimir la lista de bolsas y sus respectivos aminoacidos
	}
	print "\n\n  ________________________________\n\n  INGRESO DE DATOS FINALIZADO\n  ________________________________\n\n";
	print "  GENERANDO EL ARCHIVO DE SALIDA\n";
	print "  REVISE SUS ARCHIVOS $archivo.doc y $archivo_datos.doc";
	print "\n  ________________________________\n\n";
	close(ARCHIVO);
	close(ARCHIVO2);
	sleep (2);
	exit;
}
else{

	print ARCHIVO "\t$peptidos PEPTIDOS $familias FAMILIAS\n\n\n";

	my $secuencia='';
	my $posicion='';
	my $posicion_f='';
	my $familia='';
	my $residuos='';
	my $bolsa='';
	my $peso=0;

	my $O=0; my $A=0; my $C=0; my $D=0; my $E=0; my $F=0; my $G=0; my $H=0; my $I=0; my $K=0; my $L=0; my $M=0; my $N=0; my $P=0; my $Q=0; my $R=0; my $S=0; my $T=0; my $V=0; my $W=0; my $Y=0;
	my $OUT=0;
	my %hash=();
	my $acople=0;
	my @arreglo='';
	my @aminoacidos='';
	my @bolsas='';
	print "\n\n";
	my $PO=0; my $PA=0; my $PC=0; my $PD=0; my $PE=0; my $PF=0; my $PG=0; my $PH=0; my $PI=0; my $PK=0; my $PL=0; my $PM=0; my $PN=0;
	my $PP=0; my $PQ=0; my $PR=0; my $PS=0; my $PT=0; my $PV=0; my $PW=0; my $PY=0;

	for(my $o=1;$o<=$peptidos;$o++){
		$PO=0; $PA=0; $PC=0; $PD=0; $PE=0; $PF=0; $PG=0; $PH=0; $PI=0; $PK=0; $PL=0; $PM=0; $PN=0;
		$PP=0; $PQ=0; $PR=0; $PS=0; $PT=0; $PV=0; $PW=0; $PY=0;

		print "\n  ________________________________\n\n  COMPLETE LOS DATOS DEL PEPTIDO $o \n  ________________________________\n";
		$peso=0;
		my $pos=0;
		my $size=0;	
		do{
			$pos=0;
			print "\n  SECUENCIA AMINOACIDICA: ";
			$secuencia=<STDIN>;
			chop($secuencia);
			@aminoacidos=split("",$secuencia);#separamos cada aminoacido en un arreglo
			$arreglo[$o]=$secuencia;
			$OUT=0;
			my $x=0;
			$size=@aminoacidos; #numero de residuos del peptido
			$PA=0; $PC=0; $PD=0; $PE=0; $PF=0; $PG=0; $PH=0; $PI=0; $PK=0; $PL=0;
			$PM=0; $PN=0; $PP=0; $PQ=0; $PR=0; $PS=0; $PT=0; $PV=0; $PW=0; $PY=0;
			#print $size;
			for($x=1;$x<=$size;$x++){
				if($aminoacidos[$x-1] =~ /B/ or $aminoacidos[$x-1] =~ /b/ or $aminoacidos[$x-1] =~ /J/ or $aminoacidos[$x-1] =~ /j/ or 
					$aminoacidos[$x-1] =~ /Ñ/ or $aminoacidos[$x-1] =~ /ñ/ or $aminoacidos[$x-1] =~ /U/ or $aminoacidos[$x-1] =~ /u/ or # $aminoacidos[$x-1] =~ /X/ or $aminoacidos[$x-1] =~ /x/ or 
					$aminoacidos[$x-1] =~ /Z/ or $aminoacidos[$x-1] =~ /z/ or $aminoacidos[$x-1] =~ /1/ or $aminoacidos[$x-1] =~ /2/ or $aminoacidos[$x-1] =~ /3/ or $aminoacidos[$x-1] =~ /4/ or 
					$aminoacidos[$x-1] =~ /5/ or $aminoacidos[$x-1] =~ /6/ or $aminoacidos[$x-1] =~ /7/ or $aminoacidos[$x-1] =~ /8/ or $aminoacidos[$x-1] =~ /9/ or $aminoacidos[$x-1] =~ /0/ or
					$aminoacidos[$x-1] =~ /\s/ or $aminoacidos[$x-1] =~ /\t/ or $aminoacidos[$x-1] =~ /\W/ #or $aminoacidos[$x-1] =~ /n/ or $aminoacidos[$x-1] =~ /P/ or $aminoacidos[$x-1] =~ /p/ or
				){
					print "  \n  ERROR : DEBE INGRESAR SIMBOLOS DE UNA LETRA DE LOS AMINOACIDOS\n";
					$pos=1;
				}
			}
			
			if($pos==0){
				for($x=1;$x<=$size;$x++){
				
					if($aminoacidos[$x-1] eq 'A' || $aminoacidos[$x-1] eq 'a'){
						$A++;
						$PA++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'c' or $aminoacidos[$x-1] eq 'C'){
						$C++;
						$PC++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'D' or $aminoacidos[$x-1] eq 'd'){
						$D++;
						$PD++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'E' or $aminoacidos[$x-1] eq 'e'){
						$E++;
						$PE++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'F' or $aminoacidos[$x-1] eq 'f'){
						$F++;
						$PF++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'G' or $aminoacidos[$x-1] eq 'g'){
						$G++;
						$PG++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'H' or $aminoacidos[$x-1] eq 'h'){
						$H++;
						$PH++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'I' or $aminoacidos[$x-1] eq 'i'){
						$I++;
						$PI++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'K' or $aminoacidos[$x-1] eq 'k'){
						$K++;
						$PK++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'L' or $aminoacidos[$x-1] eq 'l'){
						$L++;
						$PL++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'm' or $aminoacidos[$x-1] eq 'M'){
						$M++;
						$PM++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'N' or $aminoacidos[$x-1] eq 'n'){
						$N++;
						$PN++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'P' or $aminoacidos[$x-1] eq 'p'){
						$P++;
						$PP++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'q' or $aminoacidos[$x-1] eq 'Q'){
						$Q++;
						$PQ++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'R' or $aminoacidos[$x-1] eq 'r'){
						$R++;
						$PR++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'S' or $aminoacidos[$x-1] eq 's'){
						$S++;
						$PS++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 't' or $aminoacidos[$x-1] eq 'T'){
						$T++;
						$PT++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'V' or $aminoacidos[$x-1] eq 'v'){
						$V++;
						$PV++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'w' or $aminoacidos[$x-1] eq 'W'){
						$W++;
						$PW++;
						#$pos=0;
					}
					if($aminoacidos[$x-1] eq 'Y' or $aminoacidos[$x-1] eq 'y'){
						$Y++;
						$PY++;
						#$pos=0;
					}
				}
			}
		}while($pos!=0);
		$pos=0;
		do{
			print "\n  POSICION EN LA SECUENCIA AMINOACIDICA: ";
			$posicion=<STDIN>;
			chop($posicion);
			if ($posicion =~  /^\d+$/){
				$pos=0;
			}else{
				print "  \n  ERROR : DEBE INGRESAR UN VALOR NUMERICO\n";
				$pos=1;
			}
		}while($pos!=0);
		
		print "\n  FAMILIA : ";
		$familia=<STDIN>;
		chop($familia);
		$familia =~ tr/a-z/A-Z/;
		
		
		do{
			print "\n  NUMERO DE BOLSA: ";
			$bolsa=<STDIN>;
			chop($bolsa);
			$bolsas[$o]=$bolsa;
			if ($bolsa =~  /^\d+$/){
				$pos=0;
			}else{
				print "  \n  ERROR : DEBE INGRESAR UN VALOR NUMERICO\n";
				$pos=1;
			}
		}while($pos!=0);
		
		$posicion_f=$posicion+$size-1;
		$peso=($PA*(89.09)+$PC*(121.16)+$PD*(133.10)+$PE*(147.13)+$PF*(165.19)+$PG*(75.07)+$PH*(155.16)+$PI*(131.18)+$PK*(146.19)+$PL*(131.17)+$PM*(149.21)+$PN*(132.12)+$PP*(115.13)+$PQ*(146.15)+$PR*(174.20)+$PS*(105.09)+$PT*(119.12)+$PV*(117.15)+$PW*(204.23)+$PY*(181.19))-18*($size-1);

		print ARCHIVO "\t$size\t$posicion\t$posicion_f\t$familia\n";
		print ARCHIVO "\t$bolsa\t";
		$peso = sprintf "%.2f",$peso;
		print ARCHIVO "$peso"; # imprime '007'
		$secuencia =~ tr/a-z/A-Z/;
		print ARCHIVO "\t$secuencia\n";
		
	}
	
	print ARCHIVO "\n\nR.PEP\t    9       1 9       1 9       1 9       1 9       1 9       1\n";
	for(my $o=1;$o<=$peptidos;$o++){
		my $todos=63;
		my @monomero=split("",$arreglo[$o]);
		my $size=@monomero;
		my $espacios=$todos-$size;
		$arreglo[$o] =~ tr/a-z/A-Z/;
		print ARCHIVO $bolsas[$o]."\t"." "x$espacios.$arreglo[$o];
		print ARCHIVO "\n";
	}

	my $largo_bolsas=0;
	$largo_bolsas=@bolsas;
	print ARCHIVO  "\n
		ALA\t\t$A \tRESIDUOS
		ARG\t\t$R \tRESIDUOS
		ASN\t\t$N \tRESIDUOS
		ASP\t\t$D \tRESIDUOS
		CYS\t\t$C \tRESIDUOS
		GLN\t\t$Q \tRESIDUOS
		GLU\t\t$E \tRESIDUOS
		GLY\t\t$G \tRESIDUOS
		HIS\t\t$H \tRESIDUOS
		ILE\t\t$I \tRESIDUOS
		LEU\t\t$L \tRESIDUOS
		LYS\t\t$K \tRESIDUOS
		MET\t\t$M \tRESIDUOS
		PHE\t\t$F \tRESIDUOS
		PRO\t\t$P \tRESIDUOS
		SER\t\t$S \tRESIDUOS
		THR\t\t$T \tRESIDUOS
		TRP\t\t$W \tRESIDUOS
		TYR\t\t$Y \tRESIDUOS
		VAL\t\t$V \tRESIDUOS
		OUT\t\t$OUT \tRESIDUOS\n
	";
	my $mayor=0;
	my $largo=0;
	my $AB=0; my $SB=0; my $DB=0;
	for(my $z=1; $z<=$peptidos;$z++){
		@aminoacidos=split("",$arreglo[$z]);
		$largo=@aminoacidos;
		if($mayor<$largo){
			$mayor=$largo;
		}
	}
	my @amin='';
	my $sale=0;
	my @bolsitas='';
	for(my $acop=1;$acop<=$mayor;$acop++){#recorremos los acoples 3
		$acople++;
		my $O=0; my $A=0; my $C=0; my $D=0; my $E=0; my $F=0; my $G=0; my $H=0; my $I=0; my $K=0; 
		my $L=0; my $M=0; my $N=0; my $P=0; my $Q=0; my $R=0; my $S=0; my $T=0; my $V=0; my $W=0; my $Y=0;
		my @BO=''; my @BA=''; my @BC=''; my @BD=''; my @BE=''; my @BF=''; my @BG=''; my @BH=''; my @BI=''; my @BK=''; 
		my @BL=''; my @BM=''; my @BN=''; my @BP=''; my @BQ=''; my @BR=''; my @BS=''; my @BT=''; my @BV=''; my @BW=''; my @BY='';
		print ARCHIVO "\n\nACOPLE NUMERO $acople\n\n";
		print ARCHIVO2 "ACOPLE NUMERO $acople:";
		
		#$AB=0; $SB=0; $DB=0;
		$PO=0; $PA=0; $PC=0; $PD=0; $PE=0; $PF=0; $PG=0; $PH=0; $PI=0; $PK=0; 
		$PL=0; $PM=0; $PN=0; $PP=0; $PQ=0; $PR=0; $PS=0; $PT=0; $PV=0; $PW=0; $PY=0;
			
		for(my $z=1;$z<=$peptidos;$z++){#recorremos el numero de peptidos para sacar el ultimo caracter
			#$PO=0; $PA=0; $PC=0; $PD=0; $PE=0; $PF=0; $PG=0; $PH=0; $PI=0; $PK=0; 
			#$PL=0; $PM=0; $PN=0; $PP=0; $PQ=0; $PR=0; $PS=0; $PT=0; $PV=0; $PW=0; $PY=0;
			@amin=split("",$arreglo[$z]);#tomamos las letras de un peptido
			$largo=@amin;#tomamos el largo del peptido
			if(($acople-$largo)<=0){
				#print "\nAA $amin[$largo-4]\n";
				if($amin[$largo-$acople] eq 'A' || $amin[$largo-$acople] eq "a"){
					$PA++;
					push @BA, $bolsas[$z];

				}else{
					if($amin[$largo-$acople] eq 'c' || $amin[$largo-$acople] eq 'C'){
						$PC++;
						push @BC, $bolsas[$z];
					}
					else{
						if($amin[$largo-$acople] eq 'D' || $amin[$largo-$acople] eq 'd'){
							$PD++;
							push @BD, $bolsas[$z];
						}
						else{
							if($amin[$largo-$acople] eq 'E' || $amin[$largo-$acople] eq 'e'){
								$PE++;
								push @BE, $bolsas[$z];
							}
							else{
								if($amin[$largo-$acople] eq 'F' || $amin[$largo-$acople] eq 'f'){
									$PF++;
									push @BF, $bolsas[$z];
								}
								else{
									if($amin[$largo-$acople] eq 'G' || $amin[$largo-$acople] eq 'g'){
										$PG++;
										push @BG, $bolsas[$z];									
									}
									else{
										if($amin[$largo-$acople] eq 'H' || $amin[$largo-$acople] eq 'h'){
											$PH++;
											push @BH, $bolsas[$z];
										}
										else{
											if($amin[$largo-$acople] eq 'I' || $amin[$largo-$acople] eq 'i'){
												$PI++;
												push @BI, $bolsas[$z];
											}
											else{
												if($amin[$largo-$acople] eq 'K' || $amin[$largo-$acople] eq 'k'){
													$PK++;
													push @BK, $bolsas[$z];
												}
												else{
													if($amin[$largo-$acople] eq 'L' || $amin[$largo-$acople] eq 'l'){
														$PL++;
														push @BL, $bolsas[$z];
													}
													else{
														if($amin[$largo-$acople] eq 'm' || $amin[$largo-$acople] eq 'M'){
															$PM++;
															push @BM, $bolsas[$z];
														}
														else{
															if($amin[$largo-$acople] eq 'N' || $amin[$largo-$acople] eq 'n'){
																$PN++;
																push @BN, $bolsas[$z];
															}
															else{
																if($amin[$largo-$acople] eq 'P' || $amin[$largo-$acople] eq 'p'){
																	$PP++;
																	push @BP, $bolsas[$z];
																}
																else{
																	if($amin[$largo-$acople] eq 'q' or $amin[$largo-$acople] eq 'Q'){
																		$PQ++;
																		push @BQ, $bolsas[$z];
																	}
																	else{
																		if($amin[$largo-$acople] eq 'R' or $amin[$largo-$acople] eq 'r'){
																			$PR++;
																			push @BR, $bolsas[$z];
																		}
																		else{
																			if($amin[$largo-$acople] eq 'S' or $amin[$largo-$acople] eq 's'){
																				$PS++;
																				push @BS, $bolsas[$z];																
																			}
																			else{
																				if($amin[$largo-$acople] eq 't' or $amin[$largo-$acople] eq 'T'){
																					$PT++;
																					push @BT, $bolsas[$z];
																				}
																				else{
																					if($amin[$largo-$acople] eq 'V' or $amin[$largo-$acople] eq 'v'){
																						$PV++;
																						push @BV, $bolsas[$z];
																					}
																					else{
																						if($amin[$largo-$acople] eq 'w' or $amin[$largo-$acople] eq 'W'){
																							$PW++;
																							push @BW, $bolsas[$z];
																						}
																						else{
																							if($amin[$largo-$acople] eq 'Y' || $amin[$largo-$acople] eq 'y'){
																								$PY++;
																								push @BY, $bolsas[$z];
																							}
																						}
																					}
																				}
																			}		
																		}																									
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
			else{
				$O++;
				push @BO, $bolsas[$z];
			}
		}
		my $ml;
		$veinteuno = 21;
		if($sintesis==1){
			$ml=2;
		}
		if($sintesis==2){
			$ml=4;
		}
		my $mls=0;
		if($PA>0){
			$mls=$ml*$PA;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml ALA:\t@BA =$PA\n";	
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml ALA:\t@BA =$PA\n";
			}
			print ARCHIVO "\t$mls ml ALA:\t@BA\n";	
			$veinteuno--;
		}
		if($PC>0){
			$mls=$ml*$PC;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml CYS:\t@BC =$PC\n";
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml CYS:\t@BC =$PC\n";
			}
			print ARCHIVO "\t$mls ml CYS:\t@BC\n";	
			$veinteuno--;
		}
		if($PD>0){	
			$mls=$ml*$PD;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml ASP:\t@BD =$PD\n";
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml ASP:\t@BD =$PD\n";
			}
			print ARCHIVO "\t$mls ml ASP:\t@BD\n";
			$veinteuno--;
		}
		if($PE>0){
			$mls=$ml*$PE;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml GLU:\t@BE =$PE\n";
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml GLU:\t@BE =$PE\n";
			}
			print ARCHIVO "\t$mls ml GLU:\t@BE\n";
			
			$veinteuno--;
		}
		if($PF>0){
			$mls=$ml*$PF;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml PHE:\t@BF =$PF\n";
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml PHE:\t@BF =$PF\n";
			}
			print ARCHIVO "\t$mls ml PHE:\t@BF\n";
			$veinteuno--;
		}
		if($PG>0){
			$mls=$ml*$PG;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml GLY:\t@BG =$PG\n";
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml GLY:\t@BG =$PG\n";
			}
			print ARCHIVO "\t$mls ml GLY:\t@BG\n";
			$veinteuno--;
		}
		if($PH>0){
			$mls=$ml*$PH;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml HIS:\t@BH =$PH\n";
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml HIS:\t@BH =$PH\n";
			}		
			print ARCHIVO "\t$mls ml HIS:\t@BH\n";
			$veinteuno--;
		}
		if($PI>0){
			$mls=$ml*$PI;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml ILE:\t@BI =$PI\n";
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml ILE:\t@BI =$PI\n";
			}
			print ARCHIVO "\t$mls ml ILE:\t@BI\n";	
			 $veinteuno--;
		}
		if($PK>0){
			$mls=$ml*$PK;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml LYS:\t@BK =$PK\n";
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml LYS:\t@BK =$PK\n";
			}
			print ARCHIVO "\t$mls ml LYS:\t@BK\n";
			$veinteuno--;
		}
		if($PL>0){
			$mls=$ml*$PL;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml LEU:\t@BL =$PL\n"; 
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml LEU:\t@BL =$PL\n"; 
			}
			print ARCHIVO "\t$mls ml LEU:\t@BL\n";
			$veinteuno--;
		}
		if($PM>0){
			$mls=$ml*$PM;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml MET:\t@BM =$PM\n"; 
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml MET:\t@BM =$PM\n"; 
			}
			print ARCHIVO "\t$mls ml MET:\t@BM\n";
			$veinteuno--;
		}
		if($PN>0){
			$mls=$ml*$PN;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml ASN:\t@BN =$PN\n"; 
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml ASN:\t@BN =$PN\n"; 
			}
			print ARCHIVO "\t$mls ml ASN:\t@BN\n";
			$veinteuno--;
		}
		if($PP>0){
			$mls=$ml*$PP;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml PRO:\t@BP =$PP\n"; 
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml PRO:\t@BP =$PP\n"; 
			}
			print ARCHIVO "\t$mls ml PRO:\t@BP\n";	
			$veinteuno--;
		}
		if($PQ>0){
			$mls=$ml*$PQ;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml GLN:\t@BQ =$PQ\n"; 
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml GLN:\t@BQ =$PQ\n"; 
			}
			print ARCHIVO "\t$mls ml GLN:\t@BQ\n";	
			$veinteuno--;
		}
		if($PR>0){
			$mls=$ml*$PR;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml ARG:\t@BR =$PR\n";
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml ARG:\t@BR =$PR\n";
			}
			print ARCHIVO "\t$mls ml ARG:\t@BR\n";	
			$veinteuno--;
		}
		if($PS>0){		
			$mls=$ml*$PS;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml SER:\t@BS =$PS\n";
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml SER:\t@BS =$PS\n";
			}
			print ARCHIVO "\t$mls ml SER:\t@BS\n"; 
			$veinteuno--;
		}
		if($PT>0){
			$mls=$ml*$PT;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml THR:\t@BT =$PT\n"; 
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml THR:\t@BT =$PT\n"; 
			}
			print ARCHIVO "\t$mls ml THR:\t@BT\n";	
			$veinteuno--;
		}
		if($PV>0){
			$mls=$ml*$PV;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml VAL:\t@BV =$PV\n";
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml VAL:\t@BV =$PV\n"; 
			}
			print ARCHIVO "\t$mls ml VAL:\t@BV\n";	
			$veinteuno--;
		}
		if($PW>0){
			$mls=$ml*$PW;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml TRP:\t@BW =$PW\n"; 
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml TRP:\t@BW =$PW\n"; 
			}
			print ARCHIVO "\t$mls ml TRP:\t@BW\n";	
			$veinteuno--;
		}
		if($PY>0){
			$mls=$ml*$PY;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml TYR:\t@BY =$PY\n"; 
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml TYR:\t@BY =$PY\n"; 
			}
			print ARCHIVO "\t$mls ml TYR:\t@BY\n";
			$veinteuno--;
		}
		if($PO>0){	
			$mls=$ml*$PO;
			if($veinteuno==21){
				print ARCHIVO2 "\t$mls ml OUT:\t@BO =$PO\n"; 
			}
			else{
				print ARCHIVO2 "\t\t\t$mls ml OUT:\t@BO =$PO\n"; 
			}
			print ARCHIVO "\t$mls ml OUT:\t@BO\n";
			$veinteuno--;
		}
		print ARCHIVO2 "\n"x$veinteuno;
		
		print ARCHIVO2 "+-----------------------------DESPROTECCION-----------------------------+\n";
		print ARCHIVO2 "|   FECHA __/__/__                               |HECHO POR|REVISADO POR|\n";
		print ARCHIVO2 "| Piperidina 20% TritonX100 1%/DMF(2x10')        |_________|____________|\n";
		print ARCHIVO2 "|   Lavado con DMF(3x1')                         |_________|____________|\n";
		print ARCHIVO2 "|   Lavado con IPA(1x1')                         |_________|____________|\n";
		print ARCHIVO2 "| Lavado con AZUL DE BROMOFENOL 1% EN DMF(1x2')  |_________|____________|\n";
		print ARCHIVO2 "|   Lavado con DMF (2x1')                        |_________|____________|\n";
		print ARCHIVO2 "|   Lavado con DMF (2x1')                        |_________|____________|\n";
		print ARCHIVO2 "+------------HORA DE ACOPLE Y DESCRIPCION DE LA ESTRATEGIA--------------+\n";
		print ARCHIVO2 "|   Ciclo  Desc. de la estrategia |FECHA   |HORA |HECHO POR|REVISADO POR|\n";
		print ARCHIVO2 "|            AA+HBTU+DIEA+OXIMA   |        |     |         |            |\n";
		print ARCHIVO2 "|   Simple   (10:10:10:20)        |__/__/__|__:__|_________|____________|\n";
		print ARCHIVO2 "|   Doble    AA+TBTU(5:5)         |__/__/__|__:__|_________|____________|\n";
		print ARCHIVO2 "|   Triple   AA+DIC(5:5)          |__/__/__|__:__|_________|____________|\n";
		print ARCHIVO2 "+ Despues de cada ciclo y antes del test BROMOFENOL lavar con DMF(2x1') +\n\n";

		my $cuenta=0; 
		for(my $z=1;$z<=$peptidos;$z++){
			$cuenta++;
			$O=0; $A=0; $C=0; $D=0; $E=0; $F=0; $G=0; $H=0; $I=0; $K=0; 
			$L=0; $M=0; $N=0; $P=0; $Q=0; $R=0; $S=0; $T=0; $V=0; $W=0; $Y=0;
			@amin=split("",$arreglo[$z]);#tomamos las letras de un peptido
			$largo=@amin;#tomamos el largo del peptido
			
			if(($acople-$largo)<=0){
				print ARCHIVO "\n\t$bolsas[$z]\t: ";
				#print ARCHIVO2 "\n";
				if($amin[$largo-$acople] eq 'A' || $amin[$largo-$acople] eq "a"){
					print ARCHIVO " ALA";
					if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo1,$var);
					}
					if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo2,$var);
					}
					if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo3,$var);
					}
					if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo4,$var);
					}
					if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo5,$var);
					}
					if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo6,$var);
					}
					if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo7,$var);
					}
					if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo8,$var);
					}
					if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo9,$var);
					}
					if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo10,$var);
					}
					if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo11,$var);
					}
					if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo12,$var);
					}
					if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo13,$var);
					}
					if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo14,$var);
					}
					if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo15,$var);
					}
					if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo16,$var);
					}
					if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
						my $var=$bolsas[$z].":ALA  ";
						push(@arreglo17,$var);
					}
					#print ARCHIVO2 "\n  $bolsas[$z]: ALA";
				}
				else{
					if($amin[$largo-$acople] eq 'c' || $amin[$largo-$acople] eq 'C'){
						print ARCHIVO " CYS";
						#print ARCHIVO2 "CYS";
						if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo1,$var);
						}
						if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo2,$var);
						}
						if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo3,$var);
						}
						if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo4,$var);
						}
						if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo5,$var);
						}
						if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo6,$var);
						}
						if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo7,$var);
						}
						if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo8,$var);
						}
						if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo9,$var);
						}
						if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo10,$var);
						}
						if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo11,$var);
						}
						if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo12,$var);
						}
						if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo13,$var);
						}
						if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo14,$var);
						}
						if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo15,$var);
						}
						if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo16,$var);
						}
						if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
							my $var=$bolsas[$z].":CYS  ";
							push(@arreglo17,$var);
						}
					}
					else{
						if($amin[$largo-$acople] eq 'D' || $amin[$largo-$acople] eq 'd'){
							print ARCHIVO " ASP";
							#print ARCHIVO2 "ASP";
							if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo1,$var);
							}
							if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo2,$var);
							}
							if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo3,$var);
							}
							if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo4,$var);
							}
							if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo5,$var);
							}
							if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo6,$var);
							}
							if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo7,$var);
							}
							if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo8,$var);
							}
							if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo9,$var);
							}
							if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo10,$var);
							}
							if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo11,$var);
							}
							if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo12,$var);
							}
							if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo13,$var);
							}
							if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo14,$var);
							}
							if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo15,$var);
							}
							if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo16,$var);
							}
							if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
								my $var=$bolsas[$z].":ASP  ";
								push(@arreglo17,$var);
							}
						}
						else{
							if($amin[$largo-$acople] eq 'E' || $amin[$largo-$acople] eq 'e'){
								print ARCHIVO " GLU";
							#	print ARCHIVO2 "GLU";
								if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo1,$var);
								}
								if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo2,$var);
								}
								if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo3,$var);
								}
								if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo4,$var);
								}
								if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo5,$var);
								}
								if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo6,$var);
								}
								if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo7,$var);
								}
								if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo8,$var);
								}
								if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo9,$var);
								}
								if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo10,$var);
								}
								if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo11,$var);
								}
								if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo12,$var);
								}
								if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo13,$var);
								}
								if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo14,$var);
								}
								if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo15,$var);
								}
								if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo16,$var);
								}
								if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
									my $var=$bolsas[$z].":GLU  ";
									push(@arreglo17,$var);
								}
							}
							else{
								if($amin[$largo-$acople] eq 'F' || $amin[$largo-$acople] eq 'f'){
									print ARCHIVO " PHE";
							#		print ARCHIVO2 "PHE";
									if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo1,$var);
									}
									if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo2,$var);
									}
									if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo3,$var);
									}
									if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo4,$var);
									}
									if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo5,$var);
									}
									if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo6,$var);
									}
									if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo7,$var);
									}
									if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo8,$var);
									}
									if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo9,$var);
									}
									if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo10,$var);
									}
									if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo11,$var);
									}
									if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo12,$var);
									}
									if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo13,$var);
									}
									if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo14,$var);
									}
									if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo15,$var);
									}
									if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo16,$var);
									}
									if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
										my $var=$bolsas[$z].":PHE  ";
										push(@arreglo17,$var);
									}
								}
								else{
									if($amin[$largo-$acople] eq 'G' || $amin[$largo-$acople] eq 'g'){
										print ARCHIVO " GLY";
							#			print ARCHIVO2 "GLY";
										if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo1,$var);
										}
										if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo2,$var);
										}
										if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo3,$var);
										}
										if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo4,$var);
										}
										if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo5,$var);
										}
										if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo6,$var);
										}
										if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo7,$var);
										}
										if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo8,$var);
										}
										if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo9,$var);
										}
										if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo10,$var);
										}
										if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo11,$var);
										}
										if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo12,$var);
										}
										if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo13,$var);
										}
										if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo14,$var);
										}
										if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo15,$var);
										}
										if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo16,$var);
										}
										if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
											my $var=$bolsas[$z].":GLY  ";
											push(@arreglo17,$var);
										}
									}
									else{
										if($amin[$largo-$acople] eq 'H' || $amin[$largo-$acople] eq 'h'){
											print ARCHIVO " HIS";
							#				print ARCHIVO2 "HIS";
											if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo1,$var);
											}
											if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo2,$var);
											}
											if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo3,$var);
											}
											if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo4,$var);
											}
											if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo5,$var);
											}
											if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo6,$var);
											}
											if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo7,$var);
											}
											if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo8,$var);
											}
											if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo9,$var);
											}
											if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo10,$var);
											}
											if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo11,$var);
											}
											if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo12,$var);
											}
											if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo13,$var);
											}
											if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo14,$var);
											}
											if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo15,$var);
											}
											if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo16,$var);
											}
											if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
												my $var=$bolsas[$z].":HIS  ";
												push(@arreglo17,$var);
											}
										}
										else{
											if($amin[$largo-$acople] eq 'I' || $amin[$largo-$acople] eq 'i'){
												print ARCHIVO " ILE";
							#					print ARCHIVO2 "ILE";
												if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo1,$var);
												}
												if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo2,$var);
												}
												if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo3,$var);
												}
												if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo4,$var);
												}
												if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo5,$var);
												}
												if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo6,$var);
												}
												if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo7,$var);
												}
												if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo8,$var);
												}
												if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo9,$var);
												}
												if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo10,$var);
												}
												if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo11,$var);
												}
												if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo12,$var);
												}
												if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo13,$var);
												}
												if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo14,$var);
												}
												if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo15,$var);
												}
												if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo16,$var);
												}
												if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
													my $var=$bolsas[$z].":ILE  ";
													push(@arreglo17,$var);
												}
											}
											else{
												if($amin[$largo-$acople] eq 'K' || $amin[$largo-$acople] eq 'k'){
													print ARCHIVO " LYS";
							#						print ARCHIVO2 "LYS";
													if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo1,$var);
													}
													if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo2,$var);
													}
													if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo3,$var);
													}
													if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo4,$var);
													}
													if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo5,$var);
													}
													if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo6,$var);
													}
													if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo7,$var);
													}
													if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo8,$var);
													}
													if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo9,$var);
													}
													if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo10,$var);
													}
													if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo11,$var);
													}
													if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo12,$var);
													}
													if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo13,$var);
													}
													if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo14,$var);
													}
													if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo15,$var);
													}
													if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo16,$var);
													}
													if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
														my $var=$bolsas[$z].":LYS  ";
														push(@arreglo17,$var);
													}
												}
												else{
													if($amin[$largo-$acople] eq 'L' || $amin[$largo-$acople] eq 'l'){
														print ARCHIVO " LEU";
							#							print ARCHIVO2 "LEU";
														if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo1,$var);
														}
														if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo2,$var);
														}
														if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo3,$var);
														}
														if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo4,$var);
														}
														if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo5,$var);
														}
														if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo6,$var);
														}
														if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo7,$var);
														}
														if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo8,$var);
														}
														if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo9,$var);
														}
														if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo10,$var);
														}
														if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo11,$var);
														}
														if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo12,$var);
														}
														if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo13,$var);
														}
														if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo14,$var);
														}
														if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo15,$var);
														}
														if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo16,$var);
														}
														if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
															my $var=$bolsas[$z].":LEU  ";
															push(@arreglo17,$var);
														}
													}
													else{
														if($amin[$largo-$acople] eq 'm' || $amin[$largo-$acople] eq 'M'){
															print ARCHIVO " MET";
							#								print ARCHIVO2 "MET";
															if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo1,$var);
															}
															if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo2,$var);
															}
															if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo3,$var);
															}
															if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo4,$var);
															}
															if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo5,$var);
															}
															if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo6,$var);
															}
															if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo7,$var);
															}
															if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo8,$var);
															}
															if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo9,$var);
															}
															if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo10,$var);
															}
															if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo11,$var);
															}
															if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo12,$var);
															}
															if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo13,$var);
															}
															if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo14,$var);
															}
															if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo15,$var);
															}
															if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo16,$var);
															}
															if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
																my $var=$bolsas[$z].":MET  ";
																push(@arreglo17,$var);
															}
														}
														else{
															if($amin[$largo-$acople] eq 'N' || $amin[$largo-$acople] eq 'n'){
																print ARCHIVO " ASN";
							#									print ARCHIVO2 "ASN";
																if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo1,$var);
																}
																if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo2,$var);
																}
																if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo3,$var);
																}
																if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo4,$var);
																}
																if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo5,$var);
																}
																if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo6,$var);
																}
																if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo7,$var);
																}
																if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo8,$var);
																}
																if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo9,$var);
																}
																if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo10,$var);
																}
																if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo11,$var);
																}
																if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo12,$var);
																}
																if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo13,$var);
																}
																if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo14,$var);
																}
																if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo15,$var);
																}
																if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo16,$var);
																}
																if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
																	my $var=$bolsas[$z].":ASN  ";
																	push(@arreglo17,$var);
																}
															}
															else{
																if($amin[$largo-$acople] eq 'P' || $amin[$largo-$acople] eq 'p'){
																	print ARCHIVO " PRO";
							#										print ARCHIVO2 "PRO";
																	if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo1,$var);
																	}
																	if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo2,$var);
																	}
																	if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo3,$var);
																	}
																	if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo4,$var);
																	}
																	if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo5,$var);
																	}
																	if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo6,$var);
																	}
																	if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo7,$var);
																	}
																	if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo8,$var);
																	}
																	if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo9,$var);
																	}
																	if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo10,$var);
																	}
																	if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo11,$var);
																	}
																	if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo12,$var);
																	}
																	if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo13,$var);
																	}
																	if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo14,$var);
																	}
																	if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo15,$var);
																	}
																	if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo16,$var);
																	}
																	if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
																		my $var=$bolsas[$z].":PRO  ";
																		push(@arreglo17,$var);
																	}	
																}
																else{
																	if($amin[$largo-$acople] eq 'q' or $amin[$largo-$acople] eq 'Q'){
																		print ARCHIVO " GLN";
							#											print ARCHIVO2 "GLN";
																		if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo1,$var);
																		}
																		if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo2,$var);
																		}
																		if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo3,$var);
																		}
																		if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo4,$var);
																		}
																		if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo5,$var);
																		}
																		if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo6,$var);
																		}
																		if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo7,$var);
																		}
																		if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo8,$var);
																		}
																		if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo9,$var);
																		}
																		if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo10,$var);
																		}
																		if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo11,$var);
																		}
																		if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo12,$var);
																		}
																		if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo13,$var);
																		}
																		if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo14,$var);
																		}
																		if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo15,$var);
																		}
																		if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo16,$var);
																		}
																		if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
																			my $var=$bolsas[$z].":GLN  ";
																			push(@arreglo17,$var);
																		}
																	}
																	else{
																		if($amin[$largo-$acople] eq 'R' or $amin[$largo-$acople] eq 'r'){
																			print ARCHIVO " ARG";
							#												print ARCHIVO2 "ARG";
																			if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo1,$var);
																			}
																			if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo2,$var);
																			}
																			if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo3,$var);
																			}
																			if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo4,$var);
																			}
																			if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo5,$var);
																			}
																			if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo6,$var);
																			}
																			if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo7,$var);
																			}
																			if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo8,$var);
																			}
																			if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo9,$var);
																			}
																			if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo10,$var);
																			}
																			if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo11,$var);
																			}
																			if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo12,$var);
																			}
																			if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo13,$var);
																			}
																			if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo14,$var);
																			}
																			if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo15,$var);
																			}
																			if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo16,$var);
																			}
																			if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
																				my $var=$bolsas[$z].":ARG  ";
																				push(@arreglo17,$var);
																			}
																		}
																		else{
																			if($amin[$largo-$acople] eq 'S' or $amin[$largo-$acople] eq 's'){
																				print ARCHIVO " SER";
							#													print ARCHIVO2 "SER";
																				if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo1,$var);
																				}
																				if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo2,$var);
																				}
																				if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo3,$var);
																				}
																				if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo4,$var);
																				}
																				if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo5,$var);
																				}
																				if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo6,$var);
																				}
																				if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo7,$var);
																				}
																				if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo8,$var);
																				}
																				if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo9,$var);
																				}
																				if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo10,$var);
																				}
																				if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo11,$var);
																				}
																				if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo12,$var);
																				}
																				if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo13,$var);
																				}
																				if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo14,$var);
																				}
																				if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo15,$var);
																				}
																				if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo16,$var);
																				}
																				if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
																					my $var=$bolsas[$z].":SER  ";
																					push(@arreglo17,$var);
																				}
																			}
																			else{
																				if($amin[$largo-$acople] eq 't' or $amin[$largo-$acople] eq 'T'){
																					print ARCHIVO " THR";
							#														print ARCHIVO2 "THR";
																					if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo1,$var);
																					}
																					if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo2,$var);
																					}
																					if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo3,$var);
																					}
																					if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo4,$var);
																					}
																					if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo5,$var);
																					}
																					if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo6,$var);
																					}
																					if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo7,$var);
																					}
																					if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo8,$var);
																					}
																					if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo9,$var);
																					}
																					if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo10,$var);
																					}
																					if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo11,$var);
																					}
																					if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo12,$var);
																					}
																					if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo13,$var);
																					}
																					if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo14,$var);
																					}
																					if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo15,$var);
																					}
																					if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo16,$var);
																					}
																					if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
																						my $var=$bolsas[$z].":THR  ";
																						push(@arreglo17,$var);
																					}
																				}
																				else{
																					if($amin[$largo-$acople] eq 'V' or $amin[$largo-$acople] eq 'v'){
																						print ARCHIVO " VAL";
							#															print ARCHIVO2 "VAL";
																						if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo1,$var);
																						}
																						if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo2,$var);
																						}
																						if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo3,$var);
																						}
																						if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo4,$var);
																						}
																						if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo5,$var);
																						}
																						if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo6,$var);
																						}
																						if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo7,$var);
																						}
																						if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo8,$var);
																						}
																						if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo9,$var);
																						}
																						if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo10,$var);
																						}
																						if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo11,$var);
																						}
																						if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo12,$var);
																						}
																						if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo13,$var);
																						}
																						if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo14,$var);
																						}
																						if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo15,$var);
																						}
																						if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo16,$var);
																						}
																						if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
																							my $var=$bolsas[$z].":VAL  ";
																							push(@arreglo17,$var);
																						}
																					}
																					else{
																						if($amin[$largo-$acople] eq 'w' or $amin[$largo-$acople] eq 'W'){
																							print ARCHIVO " TRP";
							#																print ARCHIVO2 "TRP";
																							if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo1,$var);
																							}
																							if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo2,$var);
																							}
																							if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo3,$var);
																							}
																							if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo4,$var);
																							}
																							if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo5,$var);
																							}
																							if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo6,$var);
																							}
																							if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo7,$var);
																							}
																							if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo8,$var);
																							}
																							if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo9,$var);
																							}
																							if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo10,$var);
																							}
																							if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo11,$var);
																							}
																							if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo12,$var);
																							}
																							if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo13,$var);
																							}
																							if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo14,$var);
																							}
																							if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo15,$var);
																							}
																							if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo16,$var);
																							}
																							if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
																								my $var=$bolsas[$z].":TRP  ";
																								push(@arreglo17,$var);
																							}
																						}
																						else{
																							if($amin[$largo-$acople] eq 'Y' || $amin[$largo-$acople] eq 'y'){
																								print ARCHIVO " TYR";
							#																	print ARCHIVO2 "TYR";
																								if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo1,$var);
																								}
																								if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo2,$var);
																								}
																								if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo3,$var);
																								}
																								if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo4,$var);
																								}
																								if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo5,$var);
																								}
																								if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo6,$var);
																								}
																								if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo7,$var);
																								}
																								if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo8,$var);
																								}
																								if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo9,$var);
																								}
																								if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo10,$var);
																								}
																								if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo11,$var);
																								}
																								if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo12,$var);
																								}
																								if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo13,$var);
																								}
																								if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo14,$var);
																								}
																								if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo15,$var);
																								}
																								if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo16,$var);
																								}
																								if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
																									my $var=$bolsas[$z].":TYR  ";
																									push(@arreglo17,$var);
																								}
																							}
																							else{

																								print ARCHIVO " X  ";
																								if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo1,$var);
																								}
																								if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo2,$var);
																								}
																								if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo3,$var);
																								}
																								if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo4,$var);
																								}
																								if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo5,$var);
																								}
																								if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo6,$var);
																								}
																								if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo7,$var);
																								}
																								if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo8,$var);
																								}
																								if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo9,$var);
																								}
																								if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo10,$var);
																								}		
																								if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo11,$var);
																								}
																								if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo12,$var);
																								}
																								if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo13,$var);
																								}
																								if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo14,$var);
																								}
																								if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo15,$var);
																								}
																								if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo16,$var);
																								}
																								if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
																									my $var=$bolsas[$z].":X    ";
																									push(@arreglo17,$var);
																								}	
																							}
																						}
																					}
																				}
																			}		
																		}																									
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
			else{
				if($bolsas[$z] eq ''){
					print ARCHIVO "";

					if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
						my $var=$bolsas[$z]."        ";
						push(@arreglo1,$var);
					}
					if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
						my $var=$bolsas[$z]."        ";
						push(@arreglo2,$var);
					}
					if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
						my $var=$bolsas[$z]."        ";
						push(@arreglo3,$var);
					}
					if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
						my $var=$bolsas[$z]."        ";
						push(@arreglo4,$var);
					}
					if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
						my $var=$bolsas[$z]."        ";
						push(@arreglo5,$var);
					}
					if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
						my $var=$bolsas[$z]."        ";
						push(@arreglo6,$var);
					}
					if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
						my $var=$bolsas[$z]."        ";
						push(@arreglo7,$var);
					}
					if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
						my $var=$bolsas[$z]."        ";
						push(@arreglo8,$var);
					}
					if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
						my $var=$bolsas[$z]."        ";
						push(@arreglo9,$var);
					}
					if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
						my $var=$bolsas[$z]."        ";
						push(@arreglo10,$var);
					}
					if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
						my $var=$bolsas[$z]."        ";
						push(@arreglo11,$var);
					}
					if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
						my $var=$bolsas[$z]."        ";
						push(@arreglo12,$var);
					}
					if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
						my $var=$bolsas[$z]."        ";
						push(@arreglo13,$var);
					}
					if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
						my $var=$bolsas[$z]."        ";
						push(@arreglo14,$var);
					}
					if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
						my $var=$bolsas[$z]."        ";
						push(@arreglo15,$var);
					}
					if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
						my $var=$bolsas[$z]."        ";
						push(@arreglo16,$var);
					}
					if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
						my $var=$bolsas[$z]."        ";
						push(@arreglo17,$var);
					}
				}
				else{
					print ARCHIVO "\n\t$bolsas[$z]\t:  OUT";
					
					if($cuenta==1 or $cuenta==18 or $cuenta==35 or $cuenta==52 or $cuenta==69 or $cuenta==86 or $cuenta==103){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo1,$var);
						$bolsas[$z]='';
					}
					if($cuenta==2 or $cuenta==19 or $cuenta==36 or $cuenta==53 or $cuenta==70 or $cuenta==87 or $cuenta==104){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo2,$var);
						$bolsas[$z]='';
					}
					if($cuenta==3 or $cuenta==20 or $cuenta==37 or $cuenta==54 or $cuenta==71 or $cuenta==88 or $cuenta==105){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo3,$var);
						$bolsas[$z]='';
					}
					if($cuenta==4 or $cuenta==21 or $cuenta==38 or $cuenta==55 or $cuenta==72 or $cuenta==89 or $cuenta==106){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo4,$var);
						$bolsas[$z]='';
					}
					if($cuenta==5 or $cuenta==22 or $cuenta==39 or $cuenta==56 or $cuenta==73 or $cuenta==90 or $cuenta==107){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo5,$var);
						$bolsas[$z]='';
					}
					if($cuenta==6 or $cuenta==23 or $cuenta==40 or $cuenta==57 or $cuenta==74 or $cuenta==91 or $cuenta==108){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo6,$var);
						$bolsas[$z]='';
					}
					if($cuenta==7 or $cuenta==24 or $cuenta==41 or $cuenta==58 or $cuenta==75 or $cuenta==92 or $cuenta==109){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo7,$var);
						$bolsas[$z]='';
					}
					if($cuenta==8 or $cuenta==25 or $cuenta==42 or $cuenta==59 or $cuenta==76 or $cuenta==93 or $cuenta==110){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo8,$var);
						$bolsas[$z]='';
					}
					if($cuenta==9 or $cuenta==26 or $cuenta==43 or $cuenta==60 or $cuenta==77 or $cuenta==94 or $cuenta==111){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo9,$var);
						$bolsas[$z]='';
					}
					if($cuenta==10 or $cuenta==27 or $cuenta==44 or $cuenta==61 or $cuenta==78 or $cuenta==95 or $cuenta==112){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo10,$var);
						$bolsas[$z]='';
					}
					if($cuenta==11 or $cuenta==28 or $cuenta==45 or $cuenta==62 or $cuenta==79 or $cuenta==96 or $cuenta==113){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo11,$var);
						$bolsas[$z]='';
					}
					if($cuenta==12 or $cuenta==29 or $cuenta==46 or $cuenta==63 or $cuenta==80 or $cuenta==97 or $cuenta==114){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo12,$var);
						$bolsas[$z]='';
					}
					if($cuenta==13 or $cuenta==30 or $cuenta==47 or $cuenta==64 or $cuenta==81 or $cuenta==98 or $cuenta==115){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo13,$var);
						$bolsas[$z]='';
					}
					if($cuenta==14 or $cuenta==31 or $cuenta==48 or $cuenta==65 or $cuenta==82 or $cuenta==99 or $cuenta==116){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo14,$var);
						$bolsas[$z]='';
					}
					if($cuenta==15 or $cuenta==32 or $cuenta==49 or $cuenta==66 or $cuenta==83 or $cuenta==100 or $cuenta==117){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo15,$var);
						$bolsas[$z]='';
					}
					if($cuenta==16 or $cuenta==33 or $cuenta==50 or $cuenta==67 or $cuenta==84 or $cuenta==101 or $cuenta==118){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo16,$var);
						$bolsas[$z]='';
					}
					if($cuenta==17 or $cuenta==34 or $cuenta==51 or $cuenta==68 or $cuenta==85 or $cuenta==102 or $cuenta==119){
						my $var=$bolsas[$z].":OUT  ";
						push(@arreglo17,$var);
						$bolsas[$z]='';
					}
				}
			}
		}
		print ARCHIVO2 @arreglo1; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo2; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo3; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo4; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo5; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo6; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo7; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo8; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo9; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo10; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo11; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo12; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo13; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo14; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo15; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo16; print ARCHIVO2 "\n";
		print ARCHIVO2 @arreglo17; print ARCHIVO2 "\n";
		 @arreglo1='';  @arreglo2='';  @arreglo3='';  @arreglo4='';  @arreglo5='';  @arreglo6='';  @arreglo7='';  @arreglo8='';  @arreglo9='';  @arreglo10='';
		 @arreglo11='';  @arreglo12='';  @arreglo13='';  @arreglo14=''; @arreglo15='';  @arreglo16='';  @arreglo17='';
		#esto es el acople 1, aca se debe imprimir la lista de bolsas y sus respectivos aminoacidos
		
	}

	print "\n\n  ________________________________\n\n  INGRESO DE DATOS FINALIZADO\n  ________________________________\n\n";
	print "  ARCHIVO DE SALIDA GENERADO\n";
	print "  REVISE SUS ARCHIVOS $archivo.doc y $archivo_datos.doc";
	print "\n  ________________________________\n\n";
	close(ARCHIVO);
	close(ARCHIVO2);
	sleep (2);
	#system("$archivo.doc");
	#system("datos_$archivo.doc");
	exit;
}