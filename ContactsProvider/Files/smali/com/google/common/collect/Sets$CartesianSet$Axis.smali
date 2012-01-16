.class Lcom/google/common/collect/Sets$CartesianSet$Axis;
.super Ljava/lang/Object;
.source "Sets.java"


# instance fields
.field final synthetic eV:Lcom/google/common/collect/Sets$CartesianSet;

.field final hj:Lcom/google/common/collect/ImmutableSet;

.field final hk:I


# virtual methods
.method V(I)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 915
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet$Axis;->hj:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->cG()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/Sets$CartesianSet$Axis;->hk:I

    div-int v1, p1, v1

    invoke-virtual {p0}, Lcom/google/common/collect/Sets$CartesianSet$Axis;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 919
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet$Axis;->hj:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 923
    instance-of v0, p1, Lcom/google/common/collect/Sets$CartesianSet$Axis;

    if-eqz v0, :cond_0

    .line 924
    check-cast p1, Lcom/google/common/collect/Sets$CartesianSet$Axis;

    .line 925
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet$Axis;->hj:Lcom/google/common/collect/ImmutableSet;

    iget-object v1, p1, Lcom/google/common/collect/Sets$CartesianSet$Axis;->hj:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 928
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 934
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet$Axis;->eV:Lcom/google/common/collect/Sets$CartesianSet;

    iget v0, v0, Lcom/google/common/collect/Sets$CartesianSet;->size:I

    iget-object v1, p0, Lcom/google/common/collect/Sets$CartesianSet$Axis;->hj:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v1

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/common/collect/Sets$CartesianSet$Axis;->hj:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method size()I
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet$Axis;->hj:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v0

    return v0
.end method
