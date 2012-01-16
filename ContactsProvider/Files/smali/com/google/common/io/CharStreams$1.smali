.class final Lcom/google/common/io/CharStreams$1;
.super Ljava/lang/Object;
.source "CharStreams.java"

# interfaces
.implements Lcom/google/common/io/InputSupplier;


# instance fields
.field final synthetic nS:Ljava/lang/String;


# virtual methods
.method public bridge synthetic ae()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/common/io/CharStreams$1;->eu()Ljava/io/StringReader;

    move-result-object v0

    return-object v0
.end method

.method public eu()Ljava/io/StringReader;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lcom/google/common/io/CharStreams$1;->nS:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
