.class final Lcom/google/common/io/ByteStreams$5;
.super Ljava/lang/Object;
.source "ByteStreams.java"

# interfaces
.implements Lcom/google/common/io/InputSupplier;


# instance fields
.field final synthetic ia:Ljava/lang/Iterable;


# virtual methods
.method public ad()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 836
    new-instance v0, Lcom/google/common/io/MultiInputStream;

    iget-object v1, p0, Lcom/google/common/io/ByteStreams$5;->ia:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/io/MultiInputStream;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public bridge synthetic ae()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 834
    invoke-virtual {p0}, Lcom/google/common/io/ByteStreams$5;->ad()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
