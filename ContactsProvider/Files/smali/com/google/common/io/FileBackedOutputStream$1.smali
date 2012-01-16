.class Lcom/google/common/io/FileBackedOutputStream$1;
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
    .line 96
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream$1;->bz:Lcom/google/common/io/FileBackedOutputStream;

    invoke-static {v0}, Lcom/google/common/io/FileBackedOutputStream;->a(Lcom/google/common/io/FileBackedOutputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ae()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/common/io/FileBackedOutputStream$1;->ad()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream$1;->bz:Lcom/google/common/io/FileBackedOutputStream;

    invoke-virtual {v0}, Lcom/google/common/io/FileBackedOutputStream;->reset()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method
