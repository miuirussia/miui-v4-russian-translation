.class final Lcom/google/common/io/CharStreams$2;
.super Ljava/lang/Object;
.source "CharStreams.java"

# interfaces
.implements Lcom/google/common/io/InputSupplier;


# instance fields
.field final synthetic nZ:Lcom/google/common/io/InputSupplier;

.field final synthetic oa:Ljava/nio/charset/Charset;


# virtual methods
.method public bridge synthetic ae()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/common/io/CharStreams$2;->ev()Ljava/io/InputStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public ev()Ljava/io/InputStreamReader;
    .locals 3

    .prologue
    .line 86
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v0, p0, Lcom/google/common/io/CharStreams$2;->nZ:Lcom/google/common/io/InputSupplier;

    invoke-interface {v0}, Lcom/google/common/io/InputSupplier;->ae()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iget-object v2, p0, Lcom/google/common/io/CharStreams$2;->oa:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v1
.end method
