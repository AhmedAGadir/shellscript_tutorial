#! /bin/bash 

rm new-1.txt
rm -r recipes

# ECHO COMMAND
echo Hello World!

# VARIABLES
# Uppercase by convention 
# letters, numbers and underscores
NAME="Vinsmoke Ahmed"
# echo "My name is $NAME"
echo "My name is ${NAME}"

# USER INPUT
read -p "Enter your name: " USER_NAME

# SIMPLE IF STATEMENT
if [ "$USER_NAME" == "Luffy" ] 
then
    echo "HEY, have you heard of ALL BLUE?!"
elif [ "$USER_NAME" == "Zeff" ]
then
    echo "OWNERRRR ZEFF! THANK YOU FOR EVERYTHING"
else 
    echo "Hello $USER_NAME, nice to meet you!";
# to end if statement we write fi
fi

# COMPARISONS
NUM1=3
NUM2=5
if [ "$NUM1" -gt "$NUM2" ]
then
    echo "$NUM1 is greater than $NUM2"
else 
    echo "$NUM1 is less than $NUM2"
fi

########
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2
########

# FILE CONDITIONS

# create a file
touch test.txt

FILE="test.txt"

if [ -f "$FILE" ]
then
    echo "$FILE is a file"
else 
    echo "$FILE is not a file"
fi

# delete the file
echo "deleting $FILE"
rm test.txt

########
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable
########

# CASE STATEMENT
read -p "Do you have a big dream? Y/N?" ANSWER
case "$ANSWER" in  
    [yY] | [yY][eE][sS])
        echo "Jump on board :)"
        ;;
    [nN] | [nN][oO])
        echo "get lost!"
        ;;
    *) 
    # default
    echo "Please enter y/yes or n/no"
    ;;
esac

# SIMPLE FOR LOOP 
CREWMATES="Zoro Nami Usopp Chopper"
for CREWMATE in $CREWMATES 
    do 
        echo "DWAAH its StrawHat $CREWMATE"
done


# for loop to rename files
touch 1.txt 2.txt 3.txt

echo "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lobortis sodales quam quis consectetur. Aliquam erat volutpat. Sed quis velit at justo vestibulum dignissim nec id nibh. Pellentesque ac mi tortor. Nam sit amet interdum libero, sit amet eleifend erat. Quisque iaculis, nisl at facilisis vehicula, leo neque faucibus est, at eleifend elit metus sagittis massa. Aliquam consectetur tortor turpis, sed sollicitudin purus ultrices nec. Nam aliquet rhoncus neque a elementum. Sed velit metus, tempus nec sapien nec, consectetur molestie sem. Vivamus ac justo sodales, consectetur urna ac, posuere urna. Vivamus vitae sem ut velit ullamcorper luctus. Integer tempor purus in semper dapibus.

Quisque nec nisi eget ex cursus finibus non vel lectus. Nunc ornare tellus sit amet est facilisis, vel dignissim turpis dictum. Aenean gravida, urna eget posuere dictum, velit ante pharetra augue, eget ornare felis orci id arcu. Donec blandit augue felis, at consequat ex pharetra non. Pellentesque consectetur, nulla non sollicitudin pellentesque, erat mi convallis ligula, quis fringilla est lectus at dolor. Vivamus et elementum neque. In aliquet, eros ut convallis convallis, dui sapien dignissim purus, id molestie neque nisi ut metus. Ut a ligula hendrerit, vehicula lacus id, maximus ligula. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras non orci et quam tempor pellentesque. Mauris non velit sagittis, consequat libero ac, tincidunt urna. Integer interdum leo eu pretium condimentum. Nam sed erat non dui egestas rutrum. In tempor tortor nec volutpat dapibus. Maecenas lacus nibh, placerat eu ex vitae, rutrum tincidunt massa. Nam volutpat odio sit amet sodales vehicula.

Sed ac lorem leo. Vestibulum cursus molestie vestibulum. Nulla facilisi. Suspendisse finibus quam quis ornare volutpat. Donec et mollis massa. Donec nibh risus, sagittis vel tincidunt ac, efficitur sed odio. Fusce sed sollicitudin ex, id sollicitudin leo. Proin sem tortor, gravida a sagittis ac, convallis at ligula. Phasellus diam orci, suscipit quis elementum eget, fermentum id nulla. Proin sagittis erat vitae nibh auctor lobortis. In quis metus sed velit pharetra dictum vel quis eros. Curabitur quis eros accumsan, efficitur orci dignissim, vulputate ligula. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend augue semper mi interdum feugiat.

Cras ultrices pulvinar fringilla. Praesent vel aliquam lacus. Suspendisse commodo ipsum lorem, ut sagittis tellus ullamcorper et. Vestibulum ante velit, tristique in aliquet vel, sollicitudin ac ex. Praesent eu nisi egestas, euismod lorem id, accumsan nunc. Quisque posuere risus nec arcu hendrerit, eget dignissim tellus mollis. Nam malesuada arcu sed ante auctor, eget scelerisque enim interdum." > 1.txt

FILES_TO_RENAME=$(ls *.txt)
NEW="new"
for FILE_TO_RENAME in $FILES_TO_RENAME
    do
        echo "Renaming $FILE_TO_RENAME to $NEW-$FILE_TO_RENAME"
        mv $FILE_TO_RENAME $NEW-$FILE_TO_RENAME
done

rm new-2.txt new-3.txt

# WHILE LOOP - READ THROUGH A FILE LINE BY LINE 
LINE=1
while read -r CURRENT_LINE 
    do 
        echo "$LINE: $CURRENT_LINE"
        ((LINE++))
done < "./new-1.txt"

# FUNCTION
function sayHello() {
    echo "Naaaaami-swaaaaaan"
}
sayHello

# FUNCTION WITH PARAMS
function greet() {
    echo "good morning $1-SWAAAAAN and $2-CHAWWWWWN :3 :3"
}

greet "NAMI" "ROBIN"

# CREATE FOLDER AND WRITE TO A FILE
mkdir recipes
touch "recipes/blowfish.txt"
echo "Cook the fish with love and care like a true man" >> "recipes/blowfish.txt";
echo "Created recipes/blowfish.txt"