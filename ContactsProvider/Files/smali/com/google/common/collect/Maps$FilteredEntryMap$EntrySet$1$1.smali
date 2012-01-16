.class Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1$1;
.super Lcom/google/common/collect/ForwardingMapEntry;
.source "Maps.java"


# instance fields
.field final synthetic co:Ljava/util/Map$Entry;

.field final synthetic lk:Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1;Ljava/util/Map$Entry;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1$1;->lk:Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1;

    iput-object p2, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1$1;->co:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method protected af()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1$1;->co:Ljava/util/Map$Entry;

    return-object v0
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1168
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1$1;->af()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1$1;->lk:Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1;

    iget-object v0, v0, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1;->et:Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet;

    iget-object v0, v0, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet;->qT:Lcom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v1, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1$1;->co:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/Maps$FilteredEntryMap;->p(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 1174
    invoke-super {p0, p1}, Lcom/google/common/collect/ForwardingMapEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
