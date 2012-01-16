.class Lcom/google/common/collect/ImmutableSortedMap$Values$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "ImmutableSortedMap.java"


# instance fields
.field final synthetic gG:Lcom/google/common/collect/ImmutableSortedMap$Values;

.field index:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap$Values;)V
    .locals 1
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$Values$1;->gG:Lcom/google/common/collect/ImmutableSortedMap$Values;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 549
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Values$1;->gG:Lcom/google/common/collect/ImmutableSortedMap$Values;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap$Values;->a(Lcom/google/common/collect/ImmutableSortedMap$Values;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap;->b(Lcom/google/common/collect/ImmutableSortedMap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Values$1;->index:I

    return-void
.end method


# virtual methods
.method protected Z()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 551
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Values$1;->index:I

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$Values$1;->gG:Lcom/google/common/collect/ImmutableSortedMap$Values;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSortedMap$Values;->a(Lcom/google/common/collect/ImmutableSortedMap$Values;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSortedMap;->c(Lcom/google/common/collect/ImmutableSortedMap;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Values$1;->gG:Lcom/google/common/collect/ImmutableSortedMap$Values;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap$Values;->a(Lcom/google/common/collect/ImmutableSortedMap$Values;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap;->a(Lcom/google/common/collect/ImmutableSortedMap;)[Ljava/util/Map$Entry;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMap$Values$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/ImmutableSortedMap$Values$1;->index:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$Values$1;->dX()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
