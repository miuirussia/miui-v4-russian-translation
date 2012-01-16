.class final Lcom/google/common/io/Files$1;
.super Ljava/lang/Object;
.source "Files.java"

# interfaces
.implements Lcom/google/common/io/InputSupplier;


# instance fields
.field final synthetic ob:Ljava/io/File;


# virtual methods
.method public bridge synthetic ae()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/common/io/Files$1;->ew()Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public ew()Ljava/io/FileInputStream;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/common/io/Files$1;->ob:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method
