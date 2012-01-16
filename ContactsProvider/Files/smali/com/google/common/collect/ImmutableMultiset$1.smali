.class Lcom/google/common/collect/ImmutableMultiset$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "ImmutableMultiset.java"


# instance fields
.field final synthetic dI:Ljava/util/Iterator;

.field element:Ljava/lang/Object;

.field gA:I

.field final synthetic gB:Lcom/google/common/collect/ImmutableMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultiset;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$1;->gB:Lcom/google/common/collect/ImmutableMultiset;

    iput-object p2, p0, Lcom/google/common/collect/ImmutableMultiset$1;->dI:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/google/common/collect/ImmutableMultiset$1;->gA:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$1;->dI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 185
    iget v0, p0, Lcom/google/common/collect/ImmutableMultiset$1;->gA:I

    if-gtz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$1;->dI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$1;->element:Ljava/lang/Object;

    .line 188
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/ImmutableMultiset$1;->gA:I

    .line 190
    :cond_0
    iget v0, p0, Lcom/google/common/collect/ImmutableMultiset$1;->gA:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/ImmutableMultiset$1;->gA:I

    .line 191
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$1;->element:Ljava/lang/Object;

    return-object v0
.end method
