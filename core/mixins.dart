
import 'identifier.dart';

mixin GeneratedId<T extends Identifier>{
int getId(List<T>Data){
  int id=1;
if(Data.isNotEmpty){
for(T ob in Data){
if(ob.id!>=id){
  id=ob.id!+1;
}}}
return id;
}}