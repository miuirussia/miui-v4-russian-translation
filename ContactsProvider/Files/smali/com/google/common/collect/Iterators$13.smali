.class final Lcom/google/common/collect/Iterators$13;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Iterators.java"


# instance fields
.field final synthetic oC:Ljava/util/Enumeration;


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/google/common/collect/Iterators$13;->oC:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/google/common/collect/Iterators$13;->oC:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
