.class Lcom/google/common/collect/Maps$FilteredEntryMap;
.super Lcom/google/common/collect/Maps$AbstractFilteredMap;
.source "Maps.java"


# instance fields
.field entrySet:Ljava/util/Set;

.field final fl:Ljava/util/Set;

.field keySet:Ljava/util/Set;


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap;->entrySet:Ljava/util/Set;

    .line 1152
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet;-><init>(Lcom/google/common/collect/Maps$FilteredEntryMap;Lcom/google/common/collect/Maps$1;)V

    iput-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap;->keySet:Ljava/util/Set;

    .line 1186
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;-><init>(Lcom/google/common/collect/Maps$FilteredEntryMap;Lcom/google/common/collect/Maps$1;)V

    iput-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap;->keySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method
