.class Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;
.super Lcom/google/common/collect/ForwardingSet;
.source "Multimaps.java"


# instance fields
.field private final delegate:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .parameter

    .prologue
    .line 886
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    .line 887
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;->delegate:Ljava/util/Set;

    .line 888
    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;->delegate:Ljava/util/Set;

    return-object v0
.end method

.method protected bridge synthetic c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 883
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 915
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;->a()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 919
    invoke-static {p0, p1}, Lcom/google/common/collect/Collections2;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 883
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 923
    invoke-static {p0, p1}, Lcom/google/common/collect/Collections2;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 896
    new-instance v1, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;-><init>(Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 907
    invoke-static {p0}, Lcom/google/common/collect/ObjectArrays;->j(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 911
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
