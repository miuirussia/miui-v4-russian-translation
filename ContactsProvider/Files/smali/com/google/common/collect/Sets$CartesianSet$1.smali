.class Lcom/google/common/collect/Sets$CartesianSet$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Sets.java"


# instance fields
.field final synthetic eV:Lcom/google/common/collect/Sets$CartesianSet;

.field index:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/Sets$CartesianSet;)V
    .locals 0
    .parameter

    .prologue
    .line 837
    iput-object p1, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->eV:Lcom/google/common/collect/Sets$CartesianSet;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public ba()Ljava/util/List;
    .locals 4

    .prologue
    .line 845
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$CartesianSet$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 846
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->eV:Lcom/google/common/collect/Sets$CartesianSet;

    iget-object v0, v0, Lcom/google/common/collect/Sets$CartesianSet;->bA:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/Object;

    .line 850
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_1

    .line 851
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->eV:Lcom/google/common/collect/Sets$CartesianSet;

    iget-object v0, v0, Lcom/google/common/collect/Sets$CartesianSet;->bA:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Sets$CartesianSet$Axis;

    iget v3, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->index:I

    invoke-virtual {v0, v3}, Lcom/google/common/collect/Sets$CartesianSet$Axis;->V(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v1

    .line 850
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 853
    :cond_1
    iget v0, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->index:I

    .line 856
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->f([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 857
    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 841
    iget v0, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->index:I

    iget-object v1, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->eV:Lcom/google/common/collect/Sets$CartesianSet;

    iget v1, v1, Lcom/google/common/collect/Sets$CartesianSet;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 837
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$CartesianSet$1;->ba()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
