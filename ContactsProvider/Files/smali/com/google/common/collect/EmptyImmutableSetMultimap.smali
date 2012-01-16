.class Lcom/google/common/collect/EmptyImmutableSetMultimap;
.super Lcom/google/common/collect/ImmutableSetMultimap;
.source "EmptyImmutableSetMultimap.java"


# static fields
.field static final by:Lcom/google/common/collect/EmptyImmutableSetMultimap;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/google/common/collect/EmptyImmutableSetMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/EmptyImmutableSetMultimap;-><init>()V

    sput-object v0, Lcom/google/common/collect/EmptyImmutableSetMultimap;->by:Lcom/google/common/collect/EmptyImmutableSetMultimap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->fD()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ImmutableSetMultimap;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    .line 33
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/common/collect/EmptyImmutableSetMultimap;->by:Lcom/google/common/collect/EmptyImmutableSetMultimap;

    return-object v0
.end method
