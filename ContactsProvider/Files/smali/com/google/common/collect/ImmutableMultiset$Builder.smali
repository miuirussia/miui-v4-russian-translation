.class public final Lcom/google/common/collect/ImmutableMultiset$Builder;
.super Lcom/google/common/collect/ImmutableCollection$Builder;
.source "ImmutableMultiset.java"


# instance fields
.field private final md:Lcom/google/common/collect/Multiset;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$Builder;-><init>()V

    .line 396
    invoke-static {}, Lcom/google/common/collect/LinkedHashMultiset;->cA()Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->md:Lcom/google/common/collect/Multiset;

    .line 402
    return-void
.end method


# virtual methods
.method public N(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 2
    .parameter

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->md:Lcom/google/common/collect/Multiset;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;)Z

    .line 413
    return-object p0
.end method

.method public bridge synthetic c([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .parameter

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$Builder;->h([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .parameter

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$Builder;->N(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs h([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 0
    .parameter

    .prologue
    .line 458
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->c([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;

    .line 459
    return-object p0
.end method
