.class Lcom/google/common/collect/ConcurrentHashMultiset$FieldSettersHolder;
.super Ljava/lang/Object;
.source "ConcurrentHashMultiset.java"


# static fields
.field static final rS:Lcom/google/common/collect/Serialization$FieldSetter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    const-class v0, Lcom/google/common/collect/ConcurrentHashMultiset;

    const-string v1, "countMap"

    invoke-static {v0, v1}, Lcom/google/common/collect/Serialization;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/Serialization$FieldSetter;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ConcurrentHashMultiset$FieldSettersHolder;->rS:Lcom/google/common/collect/Serialization$FieldSetter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
