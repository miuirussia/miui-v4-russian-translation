.class Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;
.super Ljava/lang/Object;
.source "EditStyledText.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# instance fields
.field final synthetic mi:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1928
    const-string v0, "EditStyledText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- sethtml: src="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1930
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1934
    :try_start_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1935
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->mi:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->a(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 1937
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1938
    const/4 v2, 0x1

    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1939
    const/4 v2, 0x0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1940
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1941
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->mi:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->a(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 1943
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1944
    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1945
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget-object v7, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->mi:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    iget-object v7, v7, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->jk:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-static {v7}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;)I

    move-result v7

    if-le v4, v7, :cond_0

    .line 1946
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->mi:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    iget-object v2, v2, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->jk:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;)I

    move-result v2

    .line 1947
    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->mi:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    iget-object v4, v4, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->jk:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-static {v4}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;)I

    move-result v4

    mul-int/2addr v0, v4

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v0, v3

    .line 1948
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v7, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1949
    const/4 v4, 0x0

    invoke-static {v6, v3, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v4, v3

    move v3, v2

    move v2, v0

    .line 1953
    :goto_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->mi:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    invoke-static {v7}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->a(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v0, v7, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1955
    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v7, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1956
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 1968
    :goto_1
    return-object v0

    .line 1951
    :cond_0
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move-object v4, v3

    move v3, v2

    move v2, v0

    goto :goto_0

    .line 1958
    :catch_0
    move-exception v0

    .line 1959
    const-string v2, "EditStyledText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- set html: Failed to loaded content "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 1960
    goto :goto_1

    .line 1961
    :catch_1
    move-exception v0

    .line 1962
    const-string v0, "EditStyledText"

    const-string v2, "OutOfMemoryError"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->mi:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->a(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->setHint(I)V

    move-object v0, v1

    .line 1965
    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 1968
    goto :goto_1
.end method
