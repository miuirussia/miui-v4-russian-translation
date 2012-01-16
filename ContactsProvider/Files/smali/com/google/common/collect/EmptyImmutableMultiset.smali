.class final Lcom/google/common/collect/EmptyImmutableMultiset;
.super Lcom/google/common/collect/ImmutableMultiset;
.source "EmptyImmutableMultiset.java"


# static fields
.field static final cL:Lcom/google/common/collect/EmptyImmutableMultiset;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/google/common/collect/EmptyImmutableMultiset;

    invoke-direct {v0}, Lcom/google/common/collect/EmptyImmutableMultiset;-><init>()V

    sput-object v0, Lcom/google/common/collect/EmptyImmutableMultiset;->cL:Lcom/google/common/collect/EmptyImmutableMultiset;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->fD()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ImmutableMultiset;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    .line 32
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/common/collect/EmptyImmutableMultiset;->cL:Lcom/google/common/collect/EmptyImmutableMultiset;

    return-object v0
.end method
