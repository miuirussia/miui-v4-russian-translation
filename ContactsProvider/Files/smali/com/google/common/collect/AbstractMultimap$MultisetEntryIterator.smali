.class Lcom/google/common/collect/AbstractMultimap$MultisetEntryIterator;
.super Ljava/lang/Object;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic e:Lcom/google/common/collect/AbstractMultimap;

.field final wF:Ljava/util/Iterator;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractMultimap;)V
    .locals 1
    .parameter

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$MultisetEntryIterator;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1073
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetEntryIterator;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->bB()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetEntryIterator;->wF:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractMultimap;Lcom/google/common/collect/AbstractMultimap$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1072
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap$MultisetEntryIterator;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    return-void
.end method


# virtual methods
.method public be()Lcom/google/common/collect/Multiset$Entry;
    .locals 3

    .prologue
    .line 1080
    new-instance v1, Lcom/google/common/collect/AbstractMultimap$MultisetEntry;

    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$MultisetEntryIterator;->e:Lcom/google/common/collect/AbstractMultimap;

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetEntryIterator;->wF:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/AbstractMultimap$MultisetEntry;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetEntryIterator;->wF:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1072
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$MultisetEntryIterator;->be()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetEntryIterator;->wF:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1084
    return-void
.end method
