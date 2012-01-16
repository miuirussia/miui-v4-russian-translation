.class Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1$1;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "Multimaps.java"


# instance fields
.field final synthetic hn:Ljava/lang/Object;

.field final synthetic uU:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1$1;->uU:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;

    iput-object p2, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1$1;->hn:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public dP()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1$1;->uU:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;->sd:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;->na:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v1, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1$1;->hn:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Multimaps$MapMultimap;->c(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1$1;->hn:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1$1;->dP()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
