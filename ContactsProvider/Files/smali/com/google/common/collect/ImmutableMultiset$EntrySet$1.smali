.class Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "ImmutableMultiset.java"


# instance fields
.field final synthetic dI:Ljava/util/Iterator;

.field final synthetic dJ:Lcom/google/common/collect/ImmutableMultiset$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultiset$EntrySet;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;->dJ:Lcom/google/common/collect/ImmutableMultiset$EntrySet;

    iput-object p2, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;->dI:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public be()Lcom/google/common/collect/Multiset$Entry;
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;->dI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 299
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Multisets;->b(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;->dI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;->be()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method
