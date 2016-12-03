.class Lcom/android/phone/NBActionModeCallback$2;
.super Ljava/lang/Object;
.source "NBActionModeCallback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NBActionModeCallback;->showDialog(Lcn/nubia/commonui/phone/actionbar/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBActionModeCallback;


# direct methods
.method constructor <init>(Lcom/android/phone/NBActionModeCallback;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBActionModeCallback$2;->this$0:Lcom/android/phone/NBActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    return-void
.end method
