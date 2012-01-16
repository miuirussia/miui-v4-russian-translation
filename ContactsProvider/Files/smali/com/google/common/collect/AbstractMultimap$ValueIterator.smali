.class Lcom/google/common/collect/AbstractMultimap$ValueIterator;
.super Ljava/lang/Object;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic e:Lcom/google/common/collect/AbstractMultimap;

.field final qO:Ljava/util/Iterator;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractMultimap;)V
    .locals 1
    .parameter

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$ValueIterator;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1150
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$ValueIterator;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->ec()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$ValueIterator;->qO:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractMultimap;Lcom/google/common/collect/AbstractMultimap$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1149
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap$ValueIterator;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$ValueIterator;->qO:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$ValueIterator;->qO:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$ValueIterator;->qO:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1160
    return-void
.end method
