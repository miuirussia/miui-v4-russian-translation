.class Lcom/google/common/collect/Sets$CartesianSet;
.super Ljava/util/AbstractSet;
.source "Sets.java"


# instance fields
.field final bA:Lcom/google/common/collect/ImmutableList;

.field final size:I


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 863
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_0

    move v0, v1

    .line 876
    :goto_0
    return v0

    .line 866
    :cond_0
    check-cast p1, Ljava/util/List;

    .line 867
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet;->bA:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    .line 868
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v3, :cond_1

    move v0, v1

    .line 869
    goto :goto_0

    :cond_1
    move v2, v1

    .line 871
    :goto_1
    if-ge v2, v3, :cond_3

    .line 872
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet;->bA:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Sets$CartesianSet$Axis;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/common/collect/Sets$CartesianSet$Axis;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 873
    goto :goto_0

    .line 871
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 876
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 882
    instance-of v0, p1, Lcom/google/common/collect/Sets$CartesianSet;

    if-eqz v0, :cond_0

    .line 883
    check-cast p1, Lcom/google/common/collect/Sets$CartesianSet;

    .line 884
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet;->bA:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p1, Lcom/google/common/collect/Sets$CartesianSet;->bA:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 886
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 894
    iget v0, p0, Lcom/google/common/collect/Sets$CartesianSet;->size:I

    add-int/lit8 v1, v0, -0x1

    .line 895
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/Sets$CartesianSet;->bA:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 896
    mul-int/lit8 v1, v1, 0x1f

    .line 895
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet;->bA:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 816
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$CartesianSet;->s()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public s()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1

    .prologue
    .line 837
    new-instance v0, Lcom/google/common/collect/Sets$CartesianSet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Sets$CartesianSet$1;-><init>(Lcom/google/common/collect/Sets$CartesianSet;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 833
    iget v0, p0, Lcom/google/common/collect/Sets$CartesianSet;->size:I

    return v0
.end method
