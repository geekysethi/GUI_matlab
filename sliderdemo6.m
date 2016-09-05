function varargout = sliderdemo6(varargin)
% SLIDERDEMO6 MATLAB code for sliderdemo6.fig
%      SLIDERDEMO6, by itself, creates a new SLIDERDEMO6 or raises the existing
%      singleton*.
%
%      H = SLIDERDEMO6 returns the handle to a new SLIDERDEMO6 or the handle to
%      the existing singleton*.
%
%      SLIDERDEMO6('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SLIDERDEMO6.M with the given input arguments.
%
%      SLIDERDEMO6('Property','Value',...) creates a new SLIDERDEMO6 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before sliderdemo6_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to sliderdemo6_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help sliderdemo6

% Last Modified by GUIDE v2.5 03-Jul-2015 15:39:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @sliderdemo6_OpeningFcn, ...
                   'gui_OutputFcn',  @sliderdemo6_OutputFcn, ...
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


% --- Executes just before sliderdemo6 is made visible.
function sliderdemo6_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to sliderdemo6 (see VARARGIN)

% Choose default command line output for sliderdemo6
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes sliderdemo6 wait for user response (see UIRESUME)
% uiwait(handles.figure1);

set(handles.text1,'visible','off')
set(handles.text2,'visible','off')
global v1 v2
v1=1;
v2=100;
% --- Outputs from this function are returned to the command line.
function varargout = sliderdemo6_OutputFcn(hObject, eventdata, handles) 
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

% --- Executes on button press in start.
function start_Callback(hObject, eventdata, handles)
% hObject    handle to start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i i1 x k j j1 v1 v2

x=0;
k=1;

while(x<k)
     if(x<-1)
        break;
     end
    i1=v1;
for i=i1:100
    set(handles.slider1,'value',i)
   
        
    pause(.1)
    if(i<-1)
        break; 
    end
   
end
j1=v2;
for j=j1:-1:1
    set(handles.slider1,'value',j)
    pause(.1)
    if(j<-1)
        break;
    end
end

v1=1;
v2=400;

end


% --- Executes on button press in pause.
function pause_Callback(hObject, eventdata, handles)
% hObject    handle to pause (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global i1 i k j j1 v1 v2
k=-2;

v1=i;
v2=j;
i=-2;

j=-2;
if(v1<100)
set(handles.slider1,'value',v1)
else
    set(hanldles.slider1,'value',v2)
end
