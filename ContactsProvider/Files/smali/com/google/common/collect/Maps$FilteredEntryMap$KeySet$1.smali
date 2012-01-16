.class Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Maps.java"


# instance fields
.field final synthetic val$iterator:Ljava/util/Iterator;

.field final synthetic vx:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1192
    iput-object p1, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet$1;->vx:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;

    iput-object p2, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
