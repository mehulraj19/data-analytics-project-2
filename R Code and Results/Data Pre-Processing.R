#D:\my_work\College\sem6\data analytics\project\project main\with_and_without_masks\test\with_mask

## Loading library
library(magick)

## FilePaths
folder = "D:/my_work/College/sem6/data analytics/project/project main/data/train1"
img1 = 'D:/my_work/College/sem6/data analytics/project/project main/data/train'

## for With mask images
for (i in 1:3000) {
  ## getting file path
  fname = paste("with_mask_", i, sep="")
  fname = paste(fname,'.jpg',sep = '')
  fname1 = paste(img1, fname, sep='/')
  #print(fname1)
  
  ## Loading image
  img = system.file(fname1)
  img <- image_read(fname1)
  #print(img)
  
  ## grayscaling iamge
  img = img %>% image_convert(type = 'Grayscale')
  #print(img)
  
  ## saving image 
  fname = paste(folder, fname, sep = '/')
  image_write(img, path = fname, format = 'jpg')
}

## for without mask images
for (i in 1:3000) {
  ## getting file path
  fname = paste("without_mask_", i, sep="")
  fname = paste(fname,'.jpg',sep = '')
  fname1 = paste(img1, fname, sep='/')
  #print(fname1)
  
  ## Loading image
  img = system.file(fname1)
  img <- image_read(fname1)
  #print(img)
  
  ## grayscaling iamge
  img = img %>% image_convert(type = 'Grayscale')
  #print(img)
  
  ## saving image 
  fname = paste(folder, fname, sep = '/')
  image_write(img, path = fname, format = 'jpg')
}

## Dividing the dataset into:-
## Test: with_mask, without mask
## Train: with_mask, without_mask
## Validation: with_mask, without_mask

#D:\my_work\College\sem6\data analytics\project\project main
original_dataset_dir = "D:/my_work/College/sem6/data analytics/project/project main/data/train1"

base_dir <- "D:/my_work/College/sem6/data analytics/project/project main/with_and_without_masks_grayscale"
dir.create(base_dir)

train_dir <- file.path(base_dir, "train")
dir.create(train_dir)
validation_dir <- file.path(base_dir, "validation")
dir.create(validation_dir)
test_dir <- file.path(base_dir, "test")
dir.create(test_dir)

## with mask
train_with_dir <- file.path(train_dir, "with_mask")
dir.create(train_with_dir)

validation_with_dir <- file.path(validation_dir, "with_mask")
dir.create(validation_with_dir)

test_with_dir <- file.path(test_dir, "with_mask")
dir.create(test_with_dir)

## without mask
train_without_dir <- file.path(train_dir, "without_mask")
dir.create(train_without_dir)

validation_without_dir <- file.path(validation_dir, "without_mask")
dir.create(validation_without_dir)

test_without_dir <- file.path(test_dir, "without_mask")
dir.create(test_without_dir)

## With mask
fnames <- paste0("with_mask_", 1:2000, ".jpg")
file.copy(file.path(original_dataset_dir, fnames), 
          file.path(train_with_dir)) 

fnames <- paste0("with_mask_", 2001:2500, ".jpg")
file.copy(file.path(original_dataset_dir, fnames), 
          file.path(validation_with_dir))

fnames <- paste0("with_mask_", 2501:3000, ".jpg")
file.copy(file.path(original_dataset_dir, fnames),
          file.path(test_with_dir))

## without mask
fnames <- paste0("without_mask_", 1:2000, ".jpg")
file.copy(file.path(original_dataset_dir, fnames),
          file.path(train_without_dir))

fnames <- paste0("without_mask_", 2001:2500, ".jpg")
file.copy(file.path(original_dataset_dir, fnames),
          file.path(validation_without_dir)) 

fnames <- paste0("without_mask_", 2501:3000, ".jpg")
file.copy(file.path(original_dataset_dir, fnames),
          file.path(test_without_dir))

