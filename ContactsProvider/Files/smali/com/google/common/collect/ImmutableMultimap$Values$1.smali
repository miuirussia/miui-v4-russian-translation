.class Lcom/google/common/collect/ImmutableMultimap$Values$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "ImmutableMultimap.java"


# instance fields
.field final synthetic nT:Ljava/util/Iterator;

.field final synthetic nU:Lcom/google/common/collect/ImmutableMultimap$Values;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultimap$Values;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$Values$1;->nU:Lcom/google/common/collect/ImmutableMultimap$Values;

    iput-object p2, p0, Lcom/google/common/collect/ImmutableMultimap$Values$1;->nT:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Values$1;->nT:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Values$1;->nT:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
