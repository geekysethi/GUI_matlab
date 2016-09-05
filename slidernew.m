function varargout = slidernew(varargin)
% SLIDERNEW MATLAB code for slidernew.fig
%      SLIDERNEW, by itself, creates a new SLIDERNEW or raises the existing
%      singleton*.
%
%      H = SLIDERNEW returns the handle to a new SLIDERNEW or the handle to
%      the existing singleton*.
%
%      SLIDERNEW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SLIDERNEW.M with the given input arguments.
%
%      SLIDERNEW('Property','Value',...) creates a new SLIDERNEW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before slidernew_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to slidernew_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help slidernew

% Last Modified by GUIDE v2.5 28-Aug-2015 19:22:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @slidernew_OpeningFcn, ...
                   'gui_OutputFcn',  @slidernew_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before slidernew is made visible.
function slidernew_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to slidernew (see VARARGIN)

% Choose default command line output for slidernew
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes slidernew wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = slidernew_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global flg1 flg2
flg2=0;
flg1=0;
while(1)
    while(flg2==1)
        pause(.5);
    end
    
    if flg1==1
        
        set(handles.slider1,'value',0);
       break;
   end
for i =0:0.1:100
   set(handles.slider1,'value',i);
   pause(0.002);
   while(flg2==1)
        pause(.5);
    end
    
   if flg1==1
       set(handles.slider1,'value',0);
       break;
   end
end

for i =100:-0.1:0
   set(handles.slider1,'value',i);
   pause(0.002);
   while(flg2==1)
        pause(.5);
    end
    
   if flg1==1
       set(handles.slider1,'value',0);
       break;
   end
end

end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global flg1 flg2
flg2=0;
flg1=1;




% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1
global v1 flg2
v1=get(handles.togglebutton1,'value');
if(v1==1)
    flg2=1;

elseif(v1==0)
    flg2=0;
end    



