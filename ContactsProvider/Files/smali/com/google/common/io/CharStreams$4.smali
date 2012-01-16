.class final Lcom/google/common/io/CharStreams$4;
.super Ljava/lang/Object;
.source "CharStreams.java"

# interfaces
.implements Lcom/google/common/io/InputSupplier;


# instance fields
.field final synthetic ia:Ljava/lang/Iterable;


# virtual methods
.method public bridge synthetic ae()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/google/common/io/CharStreams$4;->et()Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public et()Ljava/io/Reader;
    .locals 2

    .prologue
    .line 381
    new-instance v0, Lcom/google/common/io/MultiReader;

    iget-object v1, p0, Lcom/google/common/io/CharStreams$4;->ia:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/io/MultiReader;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method
