.class final Lcom/google/common/collect/ComparatorOrdering;
.super Lcom/google/common/collect/Ordering;
.source "ComparatorOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final comparator:Ljava/util/Comparator;


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/common/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 55
    if-ne p1, p0, :cond_0

    .line 56
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    .line 58
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/ComparatorOrdering;

    if-eqz v0, :cond_1

    .line 59
    check-cast p1, Lcom/google/common/collect/ComparatorOrdering;

    .line 60
    iget-object v0, p0, Lcom/google/common/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    iget-object v1, p1, Lcom/google/common/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/common/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/common/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
