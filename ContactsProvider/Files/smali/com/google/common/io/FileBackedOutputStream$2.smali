.class Lcom/google/common/io/FileBackedOutputStream$2;
.super Ljava/lang/Object;
.source "FileBackedOutputStream.java"

# interfaces
.implements Lcom/google/common/io/InputSupplier;


# instance fields
.field final synthetic bz:Lcom/google/common/io/FileBackedOutputStream;


# virtual methods
.method public ad()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream$2;->bz:Lcom/google/common/io/FileBackedOutputStream;

    invoke-static {v0}, Lcom/google/common/io/FileBackedOutputStream;->a(Lcom/google/common/io/FileBackedOutputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ae()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/google/common/io/FileBackedOutputStream$2;->ad()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
