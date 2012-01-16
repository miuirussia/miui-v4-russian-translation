.class final Lcom/google/common/collect/Iterators$14;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field final synthetic val$iterator:Ljava/util/Iterator;


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/google/common/collect/Iterators$14;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/google/common/collect/Iterators$14;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
