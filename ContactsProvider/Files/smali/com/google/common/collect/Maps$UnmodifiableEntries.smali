.class Lcom/google/common/collect/Maps$UnmodifiableEntries;
.super Lcom/google/common/collect/ForwardingCollection;
.source "Maps.java"


# instance fields
.field private final fZ:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .parameter

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    .line 543
    iput-object p1, p0, Lcom/google/common/collect/Maps$UnmodifiableEntries;->fZ:Ljava/util/Collection;

    .line 544
    return-void
.end method


# virtual methods
.method protected c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableEntries;->fZ:Ljava/util/Collection;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableEntries;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 577
    invoke-static {p0, p1}, Lcom/google/common/collect/Collections2;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableEntries;->c()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 551
    invoke-super {p0}, Lcom/google/common/collect/ForwardingCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 552
    new-instance v1, Lcom/google/common/collect/Maps$UnmodifiableEntries$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Maps$UnmodifiableEntries$1;-><init>(Lcom/google/common/collect/Maps$UnmodifiableEntries;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 565
    invoke-static {p0}, Lcom/google/common/collect/ObjectArrays;->j(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 569
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
