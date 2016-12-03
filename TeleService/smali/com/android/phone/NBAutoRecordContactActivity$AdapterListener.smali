.class Lcom/android/phone/NBAutoRecordContactActivity$AdapterListener;
.super Ljava/lang/Object;
.source "NBAutoRecordContactActivity.java"

# interfaces
.implements Lcom/android/phone/NBActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBAutoRecordContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBAutoRecordContactActivity;


# direct methods
.method private constructor <init>(Lcom/android/phone/NBAutoRecordContactActivity;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBAutoRecordContactActivity$AdapterListener;->this$0:Lcom/android/phone/NBAutoRecordContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NBAutoRecordContactActivity;Lcom/android/phone/NBAutoRecordContactActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/NBAutoRecordContactActivity;
    .param p2, "x1"    # Lcom/android/phone/NBAutoRecordContactActivity$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBAutoRecordContactActivity$AdapterListener;-><init>(Lcom/android/phone/NBAutoRecordContactActivity;)V

    return-void
.end method


# virtual methods
.method public getActionMode()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBAutoRecordContactActivity$AdapterListener;->this$0:Lcom/android/phone/NBAutoRecordContactActivity;

    invoke-virtual {v0}, Lcom/android/phone/NBAutoRecordContactActivity;->isActionMode()Z

    move-result v0

    return v0
.end method
