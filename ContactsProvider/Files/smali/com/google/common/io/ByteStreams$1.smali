.class final Lcom/google/common/io/ByteStreams$1;
.super Ljava/lang/Object;
.source "ByteStreams.java"

# interfaces
.implements Lcom/google/common/io/InputSupplier;


# instance fields
.field final synthetic hI:[B

.field final synthetic hJ:I

.field final synthetic hK:I


# virtual methods
.method public bridge synthetic ae()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/common/io/ByteStreams$1;->cE()Ljava/io/ByteArrayInputStream;

    move-result-object v0

    return-object v0
.end method

.method public cE()Ljava/io/ByteArrayInputStream;
    .locals 4

    .prologue
    .line 76
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/common/io/ByteStreams$1;->hI:[B

    iget v2, p0, Lcom/google/common/io/ByteStreams$1;->hJ:I

    iget v3, p0, Lcom/google/common/io/ByteStreams$1;->hK:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method
