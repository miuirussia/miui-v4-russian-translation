.class Lcom/google/common/collect/AbstractMultimap$MultisetEntry;
.super Lcom/google/common/collect/Multisets$AbstractEntry;
.source "AbstractMultimap.java"


# instance fields
.field final aZ:Ljava/util/Map$Entry;

.field final synthetic e:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Map$Entry;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$MultisetEntry;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;-><init>()V

    .line 1091
    iput-object p2, p0, Lcom/google/common/collect/AbstractMultimap$MultisetEntry;->aZ:Ljava/util/Map$Entry;

    .line 1092
    return-void
.end method


# virtual methods
.method public X()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetEntry;->aZ:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetEntry;->aZ:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method
