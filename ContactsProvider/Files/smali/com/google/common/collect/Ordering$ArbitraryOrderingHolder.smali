.class Lcom/google/common/collect/Ordering$ArbitraryOrderingHolder;
.super Ljava/lang/Object;
.source "Ordering.java"


# static fields
.field static final iq:Lcom/google/common/collect/Ordering;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lcom/google/common/collect/Ordering$ArbitraryOrdering;

    invoke-direct {v0}, Lcom/google/common/collect/Ordering$ArbitraryOrdering;-><init>()V

    sput-object v0, Lcom/google/common/collect/Ordering$ArbitraryOrderingHolder;->iq:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
