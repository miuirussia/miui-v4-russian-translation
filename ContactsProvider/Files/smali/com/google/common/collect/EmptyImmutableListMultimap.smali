.class Lcom/google/common/collect/EmptyImmutableListMultimap;
.super Lcom/google/common/collect/ImmutableListMultimap;
.source "EmptyImmutableListMultimap.java"


# static fields
.field private static final serialVersionUID:J

.field static final uV:Lcom/google/common/collect/EmptyImmutableListMultimap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/google/common/collect/EmptyImmutableListMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/EmptyImmutableListMultimap;-><init>()V

    sput-object v0, Lcom/google/common/collect/EmptyImmutableListMultimap;->uV:Lcom/google/common/collect/EmptyImmutableListMultimap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->fD()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ImmutableListMultimap;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    .line 33
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/common/collect/EmptyImmutableListMultimap;->uV:Lcom/google/common/collect/EmptyImmutableListMultimap;

    return-object v0
.end method
