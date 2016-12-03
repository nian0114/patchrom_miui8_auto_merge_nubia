.class Lcom/android/phone/NBCallRecordSetting$2;
.super Ljava/lang/Object;
.source "NBCallRecordSetting.java"

# interfaces
.implements Lcom/android/phone/NBRadioGroupPreference$OnCheckedChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NBCallRecordSetting;->initCallRecordPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBCallRecordSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NBCallRecordSetting;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBCallRecordSetting$2;->this$0:Lcom/android/phone/NBCallRecordSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChange(Lcom/android/phone/NBRadioGroupPreference;Ljava/lang/String;)V
    .locals 3
    .param p1, "preferenceGroup"    # Lcom/android/phone/NBRadioGroupPreference;
    .param p2, "checkedKey"    # Ljava/lang/String;

    .prologue
    const-string v0, "button_auto_call_record_everyone"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting$2;->this$0:Lcom/android/phone/NBCallRecordSetting;

    invoke-virtual {v0}, Lcom/android/phone/NBCallRecordSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_record_target"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting$2;->this$0:Lcom/android/phone/NBCallRecordSetting;

    # invokes: Lcom/android/phone/NBCallRecordSetting;->hideChooseContactsPreference()V
    invoke-static {v0}, Lcom/android/phone/NBCallRecordSetting;->access$100(Lcom/android/phone/NBCallRecordSetting;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "button_auto_call_record_stranger"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting$2;->this$0:Lcom/android/phone/NBCallRecordSetting;

    invoke-virtual {v0}, Lcom/android/phone/NBCallRecordSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_record_target"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting$2;->this$0:Lcom/android/phone/NBCallRecordSetting;

    # invokes: Lcom/android/phone/NBCallRecordSetting;->hideChooseContactsPreference()V
    invoke-static {v0}, Lcom/android/phone/NBCallRecordSetting;->access$100(Lcom/android/phone/NBCallRecordSetting;)V

    goto :goto_0

    :cond_2
    const-string v0, "button_auto_call_record_chosen_contact"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting$2;->this$0:Lcom/android/phone/NBCallRecordSetting;

    invoke-virtual {v0}, Lcom/android/phone/NBCallRecordSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_record_target"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting$2;->this$0:Lcom/android/phone/NBCallRecordSetting;

    # invokes: Lcom/android/phone/NBCallRecordSetting;->showChooseContactsPreference()V
    invoke-static {v0}, Lcom/android/phone/NBCallRecordSetting;->access$200(Lcom/android/phone/NBCallRecordSetting;)V

    goto :goto_0
.end method
