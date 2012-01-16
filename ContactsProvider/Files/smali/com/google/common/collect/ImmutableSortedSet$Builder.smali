.class public final Lcom/google/common/collect/ImmutableSortedSet$Builder;
.super Lcom/google/common/collect/ImmutableSet$Builder;
.source "ImmutableSortedSet.java"


# instance fields
.field private final comparator:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .parameter

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>()V

    .line 490
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    .line 491
    return-void
.end method


# virtual methods
.method public P()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$Builder;->kW:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedSet;->b(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public varargs a([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 0
    .parameter

    .prologue
    .line 517
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->b([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 518
    return-object p0
.end method

.method public bridge synthetic b([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 1
    .parameter

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->a([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .parameter

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->a([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 0
    .parameter

    .prologue
    .line 504
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->g(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 505
    return-object p0
.end method

.method public bridge synthetic g(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 1
    .parameter

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .parameter

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method
