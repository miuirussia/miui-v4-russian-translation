.class Lcom/google/common/collect/Maps$UnmodifiableEntries$1;
.super Lcom/google/common/collect/ForwardingIterator;
.source "Maps.java"


# instance fields
.field final synthetic aW:Ljava/util/Iterator;

.field final synthetic aX:Lcom/google/common/collect/Maps$UnmodifiableEntries;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$UnmodifiableEntries;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 552
    iput-object p1, p0, Lcom/google/common/collect/Maps$UnmodifiableEntries$1;->aX:Lcom/google/common/collect/Maps$UnmodifiableEntries;

    iput-object p2, p0, Lcom/google/common/collect/Maps$UnmodifiableEntries$1;->aW:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected W()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableEntries$1;->aW:Ljava/util/Iterator;

    return-object v0
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableEntries$1;->W()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableEntries$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 554
    invoke-super {p0}, Lcom/google/common/collect/ForwardingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->b(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
