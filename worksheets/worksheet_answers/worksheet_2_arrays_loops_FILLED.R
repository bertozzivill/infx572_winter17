##############################################################################
## Worksheet 2
##############################################################################

## 1. Arrays -----------------------------

## Make a vector called "good_music" three elements long. Each element should be the name of a band/musician you like.
good_music <- c("tacocat", "velvet underground", "talking heads")

## *update* good_music by appending two more musicians you like. 
good_music <- c(good_music, "coldplay", "atmosphere")

## Use [] and : to display the 2nd through 4th elements of good_music.
print(good_music[2:4])

## Make a new vector called "music_amelia_likes" with the elements "Alt-j", "Sia", "el ten eleven", and "Sylvan Esso".
music_amelia_likes <- c("Alt-j", "Sia", "el ten eleven", "Sylvan Esso")


## Use "which" to display the index of "Sia" in music_amelia_likes.
which(music_amelia_likes=="Sia")

## Make a new vector called "combined_music" that combines good_music and music_amelia_likes.
combined_music <- c(good_music, music_amelia_likes)

## Use "which" and "-" to remove the element "el ten eleven" from combined_music. 
## Be sure to *update* combined_music, don't just display the altered vector. 
combined_music <- combined_music[-which(combined_music=="el ten eleven")]

## 2. Loops -----------------------------

## Use a "for" loop to sequentially print out each element of combined_music.
for (musicians in combined_music){
  print(musicians)
}


## Make a vector called "music_rating" the same length as combined_music. 
## Each element of music_rating should be a score, from 1 to 5, of how much you like that musician. 
## Just make a number up if you don't recognize the artist. 
music_rating <- c(5, 4, 1, 5, 5, 3, 4, 5)


## Use a "for" loop to sequentially print out each element of combined_music, and its rating (according to the vector music_rating).

for (idx in 1:length(combined_music)){
  print(paste(combined_music[idx], "has rating", music_rating[idx]))
}


## 3. Logic -----------------------------

## Modify the last "for" loop you made such that, if the musician has a rating below 3, 
## the console prints out "I don't like this musician".
for (idx in 1:length(combined_music)){
  
  this_musician <- combined_music[idx]
  this_rating <- music_rating[idx]
  
  print(paste(this_musician, "has rating", this_rating))
  
  if (this_rating<3){
    print("I don't like this musician.")
  }
}



## Modify *that* loop such that, if the musician has a rating of 5, the console prints out
# "I love this musician". 
for (idx in 1:length(combined_music)){
  
  this_musician <- combined_music[idx]
  this_rating <- music_rating[idx]
  
  print(paste(this_musician, "has rating", this_rating))
  
  if (this_rating<3){
    print("I don't like this musician.")
  }else if (this_rating==5){
    print("I love this musician")
  }
}


## Use a "while" loop to print out the first element of combined_music with a rating of 3
## MAKE SURE that at least one of your musicians has a rating of 3 before you do this!!

idx <- 1

while(music_rating[idx]!=3){
  print(idx)
  print(music_rating[idx])
  idx <- idx +1
}

combined_music[idx]

## more reasonable way to do this:
combined_music[which(music_rating==3)][1]










