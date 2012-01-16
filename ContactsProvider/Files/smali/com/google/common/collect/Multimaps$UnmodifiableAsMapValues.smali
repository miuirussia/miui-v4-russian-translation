.class Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;
.super Lcom/google/common/collect/ForwardingCollection;
.source "Multimaps.java"


# instance fields
.field final ap:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .parameter

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    .line 580
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;->ap:Ljava/util/Collection;

    .line 581
    return-void
.end method


# virtual methods
.method protected c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;->ap:Ljava/util/Collection;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->a(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 609
    invoke-static {p0, p1}, Lcom/google/common/collect/Collections2;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;->c()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;->ap:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 587
    new-instance v1, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues$1;-><init>(Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 600
    invoke-static {p0}, Lcom/google/common/collect/ObjectArrays;->j(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 603
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
