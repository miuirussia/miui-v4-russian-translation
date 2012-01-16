.class Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"


# instance fields
.field public final uR:J

.field public final uS:Lcom/android/providers/contacts/T9SearchSupport$Operation;

.field final synthetic uT:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;JLcom/android/providers/contacts/T9SearchSupport$Operation;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2467
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;->uT:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2468
    iput-wide p2, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;->uR:J

    .line 2469
    iput-object p4, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;->uS:Lcom/android/providers/contacts/T9SearchSupport$Operation;

    .line 2470
    return-void
.end method
